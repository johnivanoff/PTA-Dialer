class Student < ActiveRecord::Base
  
  belongs_to :teacher
  belongs_to :parent
  
  def whole_name 
    first_name + " " + last_name
  end

end
