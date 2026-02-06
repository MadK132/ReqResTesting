Feature: Authentication API

  Scenario: Successful user registration
    Given the Reqres API is available
    And I have valid registration data
    When I send a POST request to "/register"
    Then the response status code should be 200
    And a token should be returned

  Scenario: Registration with missing email
    Given the Reqres API is available
    And the registration data is missing email
    When I send a POST request to "/register"
    Then the response status code should be 400

  Scenario: Successful login
    Given the Reqres API is available
    And I have valid login credentials
    When I send a POST request to "/login"
    Then the response status code should be 200
    And a token should be returned
