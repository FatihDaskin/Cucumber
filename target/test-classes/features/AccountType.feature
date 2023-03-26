Feature: Account Type
  @rerun
  Scenario: Teacher User
    Given The user is on the login page
    When The user logs in using "teacher@bootflow.academy" and "Test12345!"
    Then The welcome message contains "TeacherQA"
  @rerun
  Scenario: Student User
    Given The user is on the login page
    When The user logs in using "SDETB1@bootflow.academy" and "SDETB1!"
    Then The welcome message contains "SDET1"
  @rerun
  Scenario: Developer User
    Given The user is on the login page
    When The user logs in using "bootdev@bootflow.academy" and "Dev123"
    Then The welcome message contains "DeveloperQA"

  Scenario: Developer User
    Given The user is on the login page
    When The user logs in using "ortakoyadnan@gmail.com" and "183079ao"
    Then The welcome message contains "adnan ortaköy"
  @wip
  Scenario Outline: Different User Type
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then The welcome message contains "<name>"
    Examples:
      | userType                 | password   | name          |
      | teacher@bootflow.academy | Test12345! | Teacher       |
      | SDETB1@bootflow.academy  | SDETB1!    | SDET1       |
      | bootdev@bootflow.academy | Dev123     | Developer     |
      | ortakoyadnan@gmail.com   | 183079ao   | adnan ortakoy |

    #@negative
    Scenario Outline: Negative Scenario Invalid Messages
      Given The user is on the login page
      When The user logs in using "<userName>" and "<password>"
      Then The warning message contains "<alert>"
      Examples:
          | userName                 | password   | alert                        |
          | abc@bootflow.academy     | Test12345! | Invalid Credentials!         |
          | teacher@bootflow.academy | 123456     | Invalid Credentials!         |
          | teacher@bootflow.academy |            | Invalid Credentials!         |
          | teacher@bootflowacademy  | Test12345! | Please include a valid email!|

    @negative
    Scenario Outline: Negative Scenario Validation Messages
      Given The user is on the login page
      When The user logs in using "<userName>" and "<password>"
      Then The user should be see "<message>"
      Examples:
          |userName               |password  | message|
          |teacherbootflow.academy|Test12345!| Lütfen e-posta adresine bir "@" işareti ekleyin. "teacherbootflow.academy" adresinde "@" eksik.|
          |teacher@bootflowacademy|12345     | Lütfen bu metni 6 karakter veya daha fazla olacak şekilde uzatın (şu anda 5 karakter kullanıyorsunuz). |




