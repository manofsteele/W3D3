class Course < ApplicationRecord
  has_many :enrollments,
    primary_key: :id, 
    foreign_key: :course_id, 
    class_name: :Enrollment 
    
  has_many :enrolled_students,
    through: :enrollments, 
    source: :user
    
  has_many :prerequisites, 
    primary_key: :prereq_id,
    foreign_key: :id,
    class_name: :Course,
    optional: true
  # 
  # 
  # The first attempt below is not preferred style, and is 
  # considered an improper use of the has-many/has-one construction.
  # Nearly always, belongs_to is preferred; think of objects 
  # as real objects in the world.
  
  # has_one :instructor,
  #   primary_key: :instructor_id,
  #   foreign_key: :id,
  #   class_name: :User
  belongs_to :instructor,
    primary_key: :id, 
    foreign_key: :instructor_id,
    class_name: :User

end
