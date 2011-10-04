Feature: Manage Grades

	Scenario: List Grades
		Given I have 4 grades
		When I go to the grades page
		Then I should see 4 grades