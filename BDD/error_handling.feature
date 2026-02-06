Feature: Error handling and edge cases

  Scenario: User not found
    Given the Reqres API is available
    When I send a GET request to "/users/999"
    Then the response status code should be 404

  Scenario: Invalid endpoint path
    Given the Reqres API is available
    When I send a GET request to "/wrongendpoint"
    Then the response status code should be 404

  Scenario: Unsupported HTTP method
    Given the Reqres API is available
    When I send a PUT request to "/users"
    Then the response status code should be 404 or 405
