class UsrSerializer < ActiveModel::Serializer
  attributes :name, :email, :password
end
