Feature: Manage Teachers

	Scenario: List Teachers
		Given I have 4 teachers
		When I go to the teachers page
		Then I should see 4 teachers

	Scenario: View a teacher
		Given the following grade record
			| name |
			| First Grade  |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		When I go to the teachers page
		And follow "Emory, Camille"
		Then I should see "Camille Emory"
		And I should see "First Grade"
