class Api::V1::PackagesController < ApplicationController
  # Returns list of packages in database
  def index
    @packages = Package.all
    json_response @packages
  end

end
