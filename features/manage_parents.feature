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
