class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest

  attribute :list_with_todos do |user|
       ListSerializer.new(user.lists)
  end 

 
end
