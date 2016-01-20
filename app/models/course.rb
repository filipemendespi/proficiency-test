class Course < ActiveRecord::Base
  validates_presence_of :name, :description, :status
  validates_uniqueness_of :name

    enum course_types: {
    'Ativo' => 1,
    'Inativo' => 2
  }
end
