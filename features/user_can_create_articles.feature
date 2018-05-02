Feature: User can create articles
    As a publisher
    In order to be able to add content to my service
    I would like to be able to create articles


Scenario: User can access a create article UI and successfully create an article
    Given I visit the site
    And I click on "Create Article"
    And I fill in "Title" with "My awesome article"
    And I fill in "Content" with "Some really cool content...."
    And I click on "Save"
    Then I should be on the index page
    And I should see "Your article was successfully created"
    And I should see "My awesome article"