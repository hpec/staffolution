Feature: View job apps

    As a worker, 
    So I can know if I have a job,
    I should be able to see the status of all my current applications.

Background: Some jobs and users already exist

    Given that the following jobs exist:

    |Name	|Description	|Location	|
    |Job1	|Job1 Desc	|94703		|

    And Given that the following Users exist:

    |ID|Username|Authentication|Type|Email	|
    |1 |joeshmoe|12345678      |E   |a@b.com	|

Scenario:
    When I am logged in as Test Worker 1
    And I visit the jobs page
    And I follow "apply"
    And I visit the open applications page
