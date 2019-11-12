class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :todos
end
