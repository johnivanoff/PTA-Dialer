Feature: Manage Teachers

@wip
	Scenario: List Teachers
		Given I have 4 teachers
		When I go to the teachers page
		Then I should see 4 teachers