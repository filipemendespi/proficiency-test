class Student < ActiveRecord::Base
  validates_presence_of :name, :register_number, :status
  validates_uniqueness_of :register_number

  enum student_type: {
    'Matriculado' => 1,
    'Não Matriculado' => 2
  }
end
