Feature: Apply to a job

    As a worker, 
    So that I can let an employer know that I want their job,
    I should be able to apply to a job.

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
    Then I should see "Applied!"
