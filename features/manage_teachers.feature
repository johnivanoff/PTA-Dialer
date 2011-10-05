Feature: Manage Teachers

	Scenario: List Teachers
		Given I have 4 teachers
		When I go to the teachers page
		Then I should see 4 teachers

	Scenario: View a teacher without students
		Given the following grade record
			| name |
			| Art |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		When I go to the teachers page
		And follow "Emory, Camille"
		Then I should see "Camille Emory"
		And I should see "Art"
		And I should not see "Students"

	Scenario: View a teacher with students
		Given the following grade record
			| name |
			| First Grade |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		And the following student records
			| first_name | last_name | teacher_id |
			| Jimmy      | Jones     | 1          |
			| Jimmy      | Jones     | 1          |
		When I go to the teachers page
		And follow "Emory, Camille"
		Then I should see "Camille Emory"
		And I should see "First Grade"
		And I should see "Students"
