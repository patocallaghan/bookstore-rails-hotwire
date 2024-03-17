class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :publisher, polymorphic: true
  has_and_belongs_to_many :libraries
end
