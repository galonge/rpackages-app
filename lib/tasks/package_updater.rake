
namespace :packages do

  desc "Update Database with first 10 packages"
  task populate: :environment do
    PackageUpdater.new(20).call
  end

  desc "Update Database with first 50 packages"
  task populate_50: :environment do
    PackageUpdater.new(50).call
  end

  desc "Update Database with first 500 packages"
  task populate_500: :environment do
    PackageUpdater.new(500).call
  end


  desc " Delete all packages from Database"
  task clear: :environment do
    puts "Destructive! Now we clear all packages"
    Package.delete_all
    puts "Success! run 'rake packages:populate' to populate db "
  end


end
