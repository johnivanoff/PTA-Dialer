class Student < ActiveRecord::Base

  def whole_name 
    first_name + " " + last_name
  end

end
