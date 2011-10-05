Factory.define :grade do |f|
  f.name 'john@example.com'
  f.display_order 1
end

Factory.define :teacher do |f| 
  f.first_name "Foo"
  f.last_name "Bar"
  f.email "foo.bar@example.com"
  f.phone_number "972-555-1212"
  f.grade_id 1
end

Factory.define :student do |f|
  f.first_name "Sue"
  f.last_name "Bar"
  f.teacher_id 1
  f.parent_id 1
end

Factory.define :parent do |f|
  f.first_name "Joe"
  f.last_name "Smith"
  f.address "123 Any Street"
  f.city "Richardson"
  f.state "tx"
  f.zip "75081"
end
