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

	Scenario: View a teachers students
		Given the following grade record
			| name |
			| First Grade  |
			| Second Grade |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
			| Maesha     | Klien     | 2        |
		And the following student record
			| first_name | last_name | teacher_id |
			| Jimmy      | Jones     | 1          |
			| Jenny      | Jones     | 1          |
			| John       | Smith     | 2          |
		And I am on Camille's teacher page
		When I follow "Students"
		Then I should see "Jimmy Jones"
		Then I should see "Jenny Jones"
		Then I should not see "John Smith"

	Scenario: View a students teacher
		Given the following grade record
			| name |
			| First Grade  |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		And the following student record
			| first_name | last_name | teacher_id |
			| Jimmy      | Jones     | 1          |
			| Jenny      | Jones     | 1          |
		And I go to Jimmy's student page
		When I follow "Camille Emory"
		Then I should see "Camille Emory"
		And I should see "972-555-1212"

	Scenario: View a students clasmates
		Given the following grade record
			| name |
			| First Grade  |
		And the following teacher record
			| first_name | last_name | grade_id |
			| Camille    | Emory     | 1        |
		And the following student record
			| first_name | last_name | teacher_id |
			| Jimmy      | Jones     | 1          |
			| Jenny      | Jones     | 1          |
		And I go to Jimmy's student page
		When I follow "First Grade"
		Then I should see "First Grade"
		And I should see "Jimmy Jones"
		And I should see "Jenny Jones"
