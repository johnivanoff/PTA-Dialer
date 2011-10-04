Feature: Manage Grades

	Scenario: List Grades
		Given I have 4 grades
		When I go to the grades page
		Then I should see 4 grades

	Scenario: View a teacher
		Given the following grade record
			| name |
			| First Grade  |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		When I go to the grades page
		And follow "First Grade"
		Then I should see "First Grade"
		Then I should see "Camille Emory"
		