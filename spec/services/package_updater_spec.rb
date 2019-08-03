require 'rails_helper'

RSpec.describe PackageUpdater do

  let (:package_count) { 7 }

  describe '#fetch_packages' do
      url = "http://cran.r-project.org/src/contrib/PACKAGES"

      #connections stubbed to read packages from public/sample.txt
      #when running tests
      let(:stubbed_packages) {
        get_packages
      }

      subject { described_class.new(package_count)}

      it "should return a hash of the packages" do
        expect(subject.fetch_packages(url)).to eq(stubbed_packages)
      end
  end


  describe '#url_gen' do
    let(:package) { get_package }

    #Set expected url
    url = "http://cran.r-project.org/src/contrib/A3_1.0.0.tar.gz"

    subject { described_class.new(package_count)}

    it "should return the correct url for a package" do
      expect(subject.url_gen(package)).to eq(url)
    end
  end


  describe '#save' do
    let(:package_desc) { get_package_desc }

    context "when no package in database" do
      it "should return 0 number of packages" do
        expect(Package.count).to eq(0)
      end
    end

    context "when save is called with a package" do
      subject { described_class.new(package_count)}
       it "should save new packages to database" do
          subject.save(package_desc)
          expect(Package.count).to eq(1)
        end
    end
  end
end

