class UsrSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
end
