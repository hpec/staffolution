Feature: Apply to a job

    As a worker, 
    So that I can let an employer know that I want their job,
    I should be able to apply to a job.

Background: Some jobs and users already exist

    Given that the following jobs exist:

    |Name	|Description	|Location	|
    |Job1	|Job1 Desc	|94703		|

    And Given that the following Users exist:

    |ID|Username|Authentication|Type|Email	|
    |1 |joeshmoe|12345678      |E   |a@b.com|

Scenario:
    When I am logged in as Test Worker 1
    And I visit the jobs page
    And I follow "apply"
    Then I should see "You have applied to"
