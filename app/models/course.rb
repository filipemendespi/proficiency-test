class Course < ActiveRecord::Base
  validates_presence_of :name, :description, :status
  validates_uniqueness_of :name

  has_many :classroom

    enum course_types: {
    'Ativo' => 1,
    'Inativo' => 2
  }
end
