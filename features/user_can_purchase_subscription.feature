Feature: User can purchase subscription
    [Place user story here]


Background: 
    Given the following users exist
    |email              | subscriber|
    |thomas@craft.com   | false     |

@javascript
Scenario: User can purchase a subscription
    Given I am logged in as "thomas@craft.com"
    And I visit the site
    And I click on "Become subscriber"
    #Then show me the page
    And I click on "Pay with Card" stripe button
    And I fill in the stripe field "Card number" with "4242 4242 4242 4242"
    And I fill in the stripe field "CVC" with "123"
    And I fill in the stripe field "Expiry" with "12/2020"
    And I submit the stripe form 
    Then I should be on the index page
    And I should see "Welcome as a subscriber!"