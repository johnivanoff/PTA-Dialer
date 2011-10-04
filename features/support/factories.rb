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
