Feature: View job apps

    As a worker, 
    So I can know if I have a job,
    I should be able to see the status of all my current applications.

Background: Some users already exist

    Given that the following Users exist:

    |ID|Username|Authentication|Type|Email  |
    |1 |joeshmoe|12345678      |E   |a@b.com|
    |2 |joeshmo2|12345678      |W   |b@c.com|

Scenario:
    When I am on the login page
    And I fill user_login with 'joeshmoe'
    And I fill user_password with '12345678'
    And I press "Login"
    And I create test employer 1
    And I am on the job creation page
    And I create test job 1
    And I follow "Sign Out"
    And I am on the login page
    And I log in as Test Worker 2
    And I create test employee 1
    And I am on the job page
    And I follow "Show"
    And I follow "Apply to this job!"
    And I am on the worker home page
    And I follow "View current applications"
    Then I should see "In Progress"


