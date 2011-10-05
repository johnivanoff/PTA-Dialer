Feature: Manage Students

	Scenario: List Students
		Given I have 4 students
		When I go to the students page
		Then I should see 4 students

	Scenario: View a student
		Given the following grade record
			| name |
			| First Grade |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		And the following student record
			| first_name | last_name | teacher_id |
			| Jimmy      | Jones     | 1          |
		When I go to the students page
		And follow "Jimmy Jones"
		Then I should see "Jimmy Jones"
		And I should see "First Grade"
		And I should see "Camille Emory"