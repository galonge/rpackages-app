
namespace :packages do

  desc "Index Database with all recent packages"
  task indexer: :environment do
    PackageUpdater.new().call
  end

  desc "Index Database with recent 100 packages"
  task indexer_100: :environment do
    PackageUpdater.new(100).call
  end

end
