Feature: Manage Grades

Background:
 	Given I am logged in

	Scenario: List Grades
		Given I have 4 grades
		When I go to the grades page
		Then I should see 4 grades

	Scenario: List Grades
		Given I am not logged in
		When I go to the grades page
		Then I should be on the login page
		And I should see "First log in to view this page."

	Scenario: View a grade
		Given the following grade record
			| name |
			| First Grade |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		When I go to the grades page
		And follow "First Grade"
		Then I should see "First Grade"
		Then I should see "Camille Emory"

	Scenario: View a teachers information
		Given the following grade record
			| name |
			| First Grade |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		When I go to the First Grade's page
		And follow "Camille Emory"
		Then I should see "Camille Emory"
		And I should see "972-555-1212"
