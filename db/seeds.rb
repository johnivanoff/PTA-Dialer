# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Grade.delete_all
Teacher.delete_all
Student.delete_all

Grade.create(:name => 'Principal', :display_order => 9)
Grade.create(:name => 'Librarian', :display_order => 9)
Grade.create(:name => 'Kindergarten', :display_order => 0)
Grade.create(:name => 'First Grade', :display_order => 4)
Grade.create(:name => 'Second Grade', :display_order => 2)
Grade.create(:name => 'Third Grade', :display_order => 3)
Grade.create(:name => 'Fourth Grade', :display_order => 4)
Grade.create(:name => 'Fifth Grade', :display_order => 5)
Grade.create(:name => 'Sixth Grade', :display_order => 6)
Grade.create(:name => 'Aide', :display_order => 9)
Grade.create(:name => 'Art', :display_order => 9)
Grade.create(:name => 'Cafeteria', :display_order => 9)
Grade.create(:name => 'Counselor', :display_order => 9)
Grade.create(:name => 'ESOL', :display_order => 9)
Grade.create(:name => 'Executive Assistance', :display_order => 9)
Grade.create(:name => 'Instructional Specialist', :display_order => 9)
Grade.create(:name => 'Music', :display_order => 9)
Grade.create(:name => 'Nurse', :display_order => 9)
Grade.create(:name => 'Physical Education', :display_order => 9)
Grade.create(:name => 'Reading', :display_order => 9)
Grade.create(:name => 'Secretary (Attendance)', :display_order => 9)
Grade.create(:name => 'Small Talk Teacher', :display_order => 9)
Grade.create(:name => 'Special Education', :display_order => 9)
Grade.create(:name => 'Special Education Aide', :display_order => 9)
Grade.create(:name => 'Speech', :display_order => 9)
Grade.create(:name => 'Technology Assistant', :display_order => 9)


Teacher.create(:first_name => 'Katie', :last_name => 'Kirkpatrick', :grade => Grade.find_by_name('Principal'), :email => 'Katie.Kirkpatrick@risd.org', :phone_number => '469-593-8400')
Teacher.create(:first_name => 'Jenny', :last_name => 'Colodney', :grade => Grade.find_by_name('Librarian'), :email => 'Jenny.Colodney@risd.org', :phone_number => '469-593-8406')
Teacher.create(:first_name => 'Taylor', :last_name => 'Pattillo', :grade => Grade.find_by_name('Kindergarten'), :email => 'Taylor.Pattillo@risd.org', :phone_number => '469-593-8418')
Teacher.create(:first_name => 'Sherry', :last_name => 'Stapp', :grade => Grade.find_by_name('Kindergarten'), :email => 'Sherry.Stapp@risd.org', :phone_number => '469-593-8447')
Teacher.create(:first_name => 'Donna', :last_name => 'Graham', :grade => Grade.find_by_name('First Grade'), :email => 'Donna.Graham@risd.org', :phone_number => '469-593-8428')
Teacher.create(:first_name => 'Melissa', :last_name => 'Lovelace', :grade => Grade.find_by_name('First Grade'), :email => 'Melissa.Lovelace@risd.org', :phone_number => '469-593-8427')
Teacher.create(:first_name => 'Kelly', :last_name => 'Holden', :grade => Grade.find_by_name('Second Grade'), :email => 'Kelly.Holden@risd.org', :phone_number => '469-593-8435')
Teacher.create(:first_name => 'Susan', :last_name => 'Needham', :grade => Grade.find_by_name('Second Grade'), :email => 'Susan.Needham@risd.org', :phone_number => '469-593-8423')
Teacher.create(:first_name => 'Tracey', :last_name => 'Huffman', :grade => Grade.find_by_name('Third Grade'), :email => 'Tracey.Huffman@risd.org', :phone_number => '469-593-8412')
Teacher.create(:first_name => 'Camille', :last_name => 'Emory', :grade => Grade.find_by_name('Third Grade'), :email => 'Camille.Emory@risd.org', :phone_number => '469-593-8419')
Teacher.create(:first_name => 'Jennifer', :last_name => 'Sanders', :grade => Grade.find_by_name('Fourth Grade'), :email => 'Jennifer.Sanders@risd.org', :phone_number => '469-593-8448')
Teacher.create(:first_name => 'Lashawnda', :last_name => 'Robertson', :grade => Grade.find_by_name('Fourth Grade'), :email => 'Lashawnda.Robertson@risd.org', :phone_number => '469-593-8436')
Teacher.create(:first_name => 'Stefany', :last_name => 'Gilpin', :grade => Grade.find_by_name('Fifth Grade'), :email => 'Stefany.Gilpin@risd.org', :phone_number => '469-593-8413')
Teacher.create(:first_name => 'Lindsey', :last_name => 'Williams', :grade => Grade.find_by_name('Fifth Grade'), :email => 'Lindsey.Williams@risd.org', :phone_number => '469-593-8433')
Teacher.create(:first_name => 'Julie', :last_name => 'Stevenson', :grade => Grade.find_by_name('Sixth Grade'), :email => 'Julie.Stevenson@risd.org', :phone_number => '469-593-8444')
Teacher.create(:first_name => 'Cindy', :last_name => 'Baker', :grade => Grade.find_by_name('Sixth Grade'), :email => 'Cindy.Baker@risd.org', :phone_number => '469-593-8409')
Teacher.create(:first_name => 'Jane', :last_name => 'Edmunds', :grade => Grade.find_by_name('Aide'), :email => 'Jane.Edmunds@risd.org', :phone_number => '469-593-8422')
Teacher.create(:first_name => 'Elizabeth', :last_name => 'Bell', :grade => Grade.find_by_name('Art'), :email => 'Elizabeth.Bell@risd.org', :phone_number => '469-593-8425')
Teacher.create(:first_name => 'Kathy', :last_name => 'Etchieson', :grade => Grade.find_by_name('Cafeteria'), :email => 'Kathy.Etchieson@risd.org', :phone_number => '469-593-8445')
Teacher.create(:first_name => 'Dia', :last_name => 'Thao', :grade => Grade.find_by_name('Counselor'), :email => 'Dia.Thao@risd.org', :phone_number => '469-593-8449')
Teacher.create(:first_name => 'Marcella', :last_name => 'Houston', :grade => Grade.find_by_name('ESOL'), :email => 'Marcella.Houston@risd.org', :phone_number => '469-593-8424')
Teacher.create(:first_name => 'Yvonne', :last_name => 'Collier', :grade => Grade.find_by_name('Executive Assistance'), :email => 'Yvonne.Collier@risd.org', :phone_number => '469-593-8403')
Teacher.create(:first_name => 'Jann', :last_name => 'Richards', :grade => Grade.find_by_name('Instructional Specialist'), :email => 'Jann.Richards@risd.org', :phone_number => '469-593-8446')
Teacher.create(:first_name => 'Temple', :last_name => 'Taylor', :grade => Grade.find_by_name('Music'), :email => 'Temple.Taylor@risd.org', :phone_number => '469-593-8443')
Teacher.create(:first_name => 'Judy', :last_name => 'Quicksall', :grade => Grade.find_by_name('Nurse'), :email => 'Judy.Quicksall@risd.org', :phone_number => '469-593-8404')
Teacher.create(:first_name => 'Courtney', :last_name => 'Merrett', :grade => Grade.find_by_name('Physical Education'), :email => 'Courtney.Merrett@risd.org', :phone_number => '469-593-8426')
Teacher.create(:first_name => 'Cara', :last_name => 'Aldrich', :grade => Grade.find_by_name('Physical Education'), :email => 'Cara.Aldrich@risd.org', :phone_number => '469-593-8426')
Teacher.create(:first_name => 'Jann', :last_name => 'Richards', :grade => Grade.find_by_name('Reading'), :email => 'Jann.Richards@risd.org', :phone_number => '469-593-8446')
Teacher.create(:first_name => 'Beverly', :last_name => 'Beach', :grade => Grade.find_by_name('Secretary (Attendance)'), :email => 'Beverly.Beach@risd.org', :phone_number => '469-593-8402')
Teacher.create(:first_name => 'Valerie', :last_name => 'Villarreal', :grade => Grade.find_by_name('Small Talk Teacher'), :email => 'Valerie.Villarreal@risd.org', :phone_number => '469-593-8442')
Teacher.create(:first_name => 'Denise', :last_name => 'Montgomery', :grade => Grade.find_by_name('Small Talk Teacher'), :email => 'Denise.Montgomery@risd.org', :phone_number => '469-593-8440')
Teacher.create(:first_name => 'Elizabeth', :last_name => 'Thurman', :grade => Grade.find_by_name('Small Talk Teacher'), :email => 'Elizabeth.Thurman@risd.org', :phone_number => '469-593-8431')
Teacher.create(:first_name => 'Debra', :last_name => 'Norman', :grade => Grade.find_by_name('Special Education'), :email => 'Debra.Norman@risd.org', :phone_number => '469-593-8438')
Teacher.create(:first_name => 'Pam', :last_name => 'Batts', :grade => Grade.find_by_name('Special Education Aide'), :email => 'Pam.Batts@risd.org', :phone_number => '469-593-8415')
Teacher.create(:first_name => 'Lynne', :last_name => 'Brown', :grade => Grade.find_by_name('Speech'), :email => 'Lynne.Brown@risd.org', :phone_number => '469-593-8437')
Teacher.create(:first_name => 'Christine', :last_name => 'Jamison', :grade => Grade.find_by_name('Technology Assistant'), :email => 'Christine.Jamison@risd.org', :phone_number => '469-593-8401')



Student.create(:first_name => 'Elroy', :last_name => 'jetson', :teacher => Teacher.find_by_last_name('Emory'))
Student.create(:first_name => 'Jane', :last_name => 'jetson', :teacher => Teacher.find_by_last_name('Gilpin'))
Student.create(:first_name => 'Morty', :last_name => 'Cogswell', :teacher => Teacher.find_by_last_name('Gilpin'))