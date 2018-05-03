Feature: User can comment on an article
    As a visitor
    In order to be able to express my opinion about the content of the site 
    I would like to be able to leave a comment on an article together with my email address


    Background: 
        Given the following articles exist in the database
        |title                   | content                   |
        |A breaking news article | Lorem ipsum...            |
        |Another article         | Lorem ipsum ipsum ipsum...|

    Scenario: User visits an article page and leaves a comment
        Given I visit the site
        And I click on "A breaking news article"
        And I fill in "Body" with "This is interesting!"
        And I fill in "Email" with "thomas@craft.com"
        And I click on "Save Comment"
        Then I should see "Thank you for your feedback"
        And I should see "This is interesting!"
        And I should see "Submitted by: thomas@craft.com"
    