Feature: Manage Students

@wip
	Scenario: List Students
		Given I have 4 students
		When I go to the students page
		Then I should see 4 students