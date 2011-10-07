class Student < ActiveRecord::Base
  
  belongs_to :teacher
  has_and_belongs_to_many :parents
  
  def whole_name 
    first_name + " " + last_name
  end

end
