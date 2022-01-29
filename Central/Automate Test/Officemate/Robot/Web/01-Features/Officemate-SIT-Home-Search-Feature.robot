*** Settings ***
Suite Setup       Open Home Page
Suite Teardown    Close Session
Resource          ../02-Steps/Officemate-SIT-Home-Search-Step.robot

*** Test Cases ***
Scenario: TC001 Search with less than 1 character
    Given Go To Home Page	
    And Change Language to                          English
    When I search with less than 1 character
    Then I should not get Search Result

Scenario: TC002 Verify Place Holder
    Given Go To Home Page	
    And Change Language to                          English
    When I verify Place Holder
    Then I should get Place Holder                  Search all products

Scenario: TC003 Search by Product when Search Not Found
    Given Go To Home Page	
    And Change Language to                          English
    When I search by Product                        @
    Then I should get Search Not Found              Search Not Found

Scenario: TC004 Search by Product when Search Found
    Given Go To Home Page	
    And Change Language to                          English
    When I search by Product                        1
    Then I should get Search Result

Scenario: TC005 Suggest with less than 1 character
    Given Go To Home Page	
    And Change Language to                          English
    When I am suggested with less than 1 character  
    Then I should not get Suggest Result            

Scenario: TC006 Suggest when Search Not Found
    Given Go To Home Page	
    And Change Language to                          English
    When I am suggested by                          @
    Then I should get Suggest Not Found

Scenario: TC007 Suggest when Search Found
    Given Go To Home Page	
    And Change Language to                          English
    When I am suggested by                          1
    Then I should get Suggest Result                Categories
    And I should get Suggest Result                 Products

Scenario: TC008 Search by Category
    Given Go To Home Page	
    And Change Language to                          English
    When I am suggested by                          1
    And Select Category                             in Seasonal Gifts
    Then I should get Suggest Result by Category

Scenario: TC009 Search by SKU
    Given Go To Home Page	
    And Change Language to                          English
    When I am suggested by                          1
    And Select SKU                                  MY HOME Oven 3 IN 1 OV1703 MH
    Then I should get Suggest Result by SKU
