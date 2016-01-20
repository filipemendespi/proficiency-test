class Room < ActiveRecord::Base
  validates_presence_of :students, :courses

  belongs_to :students
  belongs_to :courses
end
