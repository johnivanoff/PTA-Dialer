class Teacher < ActiveRecord::Base
  
  belongs_to :grade
  
  def whole_name 
    first_name + " " + last_name
  end

  def proper_name 
    last_name + ", " + first_name
  end
  
end
