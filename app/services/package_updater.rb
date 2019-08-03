require 'open-uri'
require 'gzipped_tar'

class PackageUpdater

  attr_reader :package_count

  def initialize(package_count=0)
    @lines_count = (package_count * 5).to_i
  end


  def call
    url = "https://cran.r-project.org/src/contrib/PACKAGES"
    packages = fetch_packages(url) #returns a prepared hash of the packages
    read_desc(packages) #reads the DESCRIPTION file for each package and update db
  end


  def fetch_packages(url)
    packages = Array.new
    package_item = Hash.new
    lines = 0

    #begin reading packages from url
    puts "Fetching packages from remote url"
    read_packages = open(url,'r').each do |line|
       lines += 1

        if line.chomp.empty?
            packages << package_item
            package_item = {}
            next
        end

         i = line.split(": ",2)
         package_item[i[0]] = i[1]



         #read only specified number of packages
          break if (lines >= @lines_count) && (@lines_count != 0)

    end

    packages
  end



  def read_desc(packages)
        packages.each do |package|
            #generate package tar.gz url
            package_url = url_gen(package)

            puts "====archive description reading has started for package - #{package["Package"]}===="
            reader = GZippedTar::Reader.new open(package_url).read

            #read package DESCRIPTION from archive
            desc = reader.read "#{package['Package'].strip}/DESCRIPTION"

            #create new hash to store items in {desc} file
            desc_hash = Hash.new

            desc.each_line do |l|
              i = l.split(": ",2)
              desc_hash[i[0]] = i[1]
            end

             # persist prepared hash to db
             save(desc_hash)
        end


  end



  def url_gen(package)
      #generates package unique url
      "http://cran.r-project.org/src/contrib/#{package['Package'].strip}_#{package['Version'].strip}.tar.gz"
  end


  def save(desc_hash)

      #prepare values for db
      name = encode_str(desc_hash["Package"])
      version = encode_str(desc_hash["Version"])
      date_of_publication = encode_str(desc_hash["Date/Publication"])
      title = encode_str(desc_hash["Title"])
      description = encode_str(desc_hash["Description"])
      author = encode_str(desc_hash["Author"])
      maintainer = encode_str(desc_hash["Maintainer"])
      version_tracker = "#{name}_#{version}"

      #start package create transaction
      begin
         Package.transaction do
              Package.create!(name: name, version: version, date_of_publication: date_of_publication,
                            title: title, description: description, author: author,
                            maintainer: maintainer, version_tracker: version_tracker
                            )
          end
      rescue ActiveRecord::RecordInvalid => e
        puts "Package Exists"
      end

     puts "====New Package #{name} Saved!===="
  end


  def encode_str(str)
    str.strip.force_encoding("UTF-8")
  end

end


