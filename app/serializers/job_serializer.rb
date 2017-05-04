class JobSerializer < ActiveModel::Serializer
  #будут отражены только указанные аттрибуты
  attributes :name, :place, :company_id
end
