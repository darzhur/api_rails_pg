class JobSerializer < ActiveModel::Serializer
  #будут отражены только указанные аттрибуты
  attributes :name, :location
end
