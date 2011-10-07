class Parent < ActiveRecord::Base

  has_and_belongs_to_many :students
  
  def whole_name 
    first_name + " " + last_name
  end

end
