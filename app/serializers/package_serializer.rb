class PackageSerializer < ActiveModel::Serializer
  attributes :id, :name,
      :version, :date_of_publication,
      :title, :description, :author,
      :maintainer
end
