Feature:Navigate to Menu Parameters

  #Background:
    #Given The user is on the login page
    #When The user logs in using "teacher@bootflow.academy" and "Test12345!"
    #Then The welcome message contains "Teacher"

  Scenario: User navigates to Developers Menu
    Given The user is on the login page
    When The user logs in using "teacher@bootflow.academy" and "Test12345!"
    Then The welcome message contains "Teacher"
    And The user navigates to "Developers" menu
    Then The user should be able to see header as "Filter Profiles by Skill or by Location"

  Scenario: User navigates to All Posts Menu
    Given The user is on the login page
    When The user logs in using "SDETB1@bootflow.academy" and "SDETB1!"
    Then The welcome message contains "Student"
    And The user navigates to "All Posts" menu
    Then The user should be able to see header as "Posts"

  Scenario: User navigates to My Account Menu
    Given The user is on the login page
    When The user logs in using "bootdev@bootflow.academy" and "Dev123"
    Then The welcome message contains "Developer"
    And The user navigates to "My Account" menu
    Then The user should be able to see header as "Dashboard"
  @wip
  Scenario Outline: User Navigates Different Menu
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then The welcome message contains "<name>"
    And The user navigates to "<menu>" menu
    Then The user should be able to see header as "<header>"
    Examples:
      | userType                 | password   | name      | menu       | header                                  |
      | teacher@bootflow.academy | Test12345! | Teacher   | Developers | Filter Profiles by Skill or by Location |
      | SDETB1@bootflow.academy  | SDETB1!    | SDET1   | All Posts  | Posts                                   |
      | bootdev@bootflow.academy | Dev123     | Developer | My Account | Dashboard                               |