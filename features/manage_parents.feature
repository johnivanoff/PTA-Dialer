Feature: Manage Parents

Background:
 	Given I am logged in

	Scenario: List Parents
		Given I have 4 parents
		When I go to the parents page
		Then I should see 4 parents

	Scenario: View a Parent
		Given the following parent record
			| first_name | last_name |
			| Sammy      | Hagar     |
		When I go to the parents page
		And follow "Sammy Hagar"
		Then I should see "Sammy Hagar"

	Scenario: View a Parents children
		Given the following grade record
			| name |
			| First Grade  |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		And the following parent record
			| first_name | last_name |
			| Sammy      | Hagar     |
		Given the following student record
			| first_name | last_name | teacher_id |
			| Jenny      | Hagar     | 1          |
		And the following parents_students record
			| parent_id | student_id | 
			| 1         | 1          |
		When I go to Sammy's parent page
		And I follow "Jenny Hagar"
		Then I should see "Jenny Hagar"

	Scenario: Create a valid Parent
		Given I am on the new parent page
		And I fill in "First name" with "John"
		And I fill in "Last name" with "Ivanoff"
		And I fill in "Address" with "123 Any Street"
		And I fill in "City" with "Dallas"
		And I fill in "State" with "TX"
		And I fill in "Zip" with "75220"
		And I press "Create Parent"
		Then I should see "John"
		And I should see "Ivanoff"
		And I should see "123 Any Street"
		And I should see "Dallas"
		And I should see "TX"
		And I should see "75220"
		And I should see "Parent was successfully created."