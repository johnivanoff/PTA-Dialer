Feature: Manage Parents

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