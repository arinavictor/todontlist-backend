class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :todos 
end
