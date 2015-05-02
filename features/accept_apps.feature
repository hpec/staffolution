Feature: Accept job apps

    As an employer,
    so that I can let people know I want them to work for me,
    I should be able to accept/decline job apps.

Background: Some jobs and users already exist

    Given that the following Users exist:

    |ID|Username|Authentication|Type|Email	|
    |1 |joeshmoe|12345678      |E   |a@b.com	|

Scenario:
    When I am logged in as Test Worker 1
    And I visit the jobs page
    And I follow "apply"
    And I collow "Log Out"
    And I log in as Test Employer 1
    And I visit the Job Applications Page
    Then I should see "joeshmoe"
