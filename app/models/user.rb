class User < ActiveRecord::Base
has_and_belongs_to_many :language_list
has_many :comment
end
