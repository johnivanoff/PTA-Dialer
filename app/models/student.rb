class Student < ActiveRecord::Base
  
  belongs_to :teacher
  
  def whole_name 
    first_name + " " + last_name
  end

end
