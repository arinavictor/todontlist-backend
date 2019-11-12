class User < ApplicationRecord
    has_many :todos
    has_many :lists, :through => :todos 
end
