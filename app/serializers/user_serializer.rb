class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :avatar, :avatar_url, :articles
end
