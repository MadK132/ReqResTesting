Feature: User management API

  Scenario: Get list of users
    Given the Reqres API is available
    When I send a GET request to "/users?page=2"
    Then the response status code should be 200
    And the response should contain a list of users

  Scenario: Get single user
    Given the Reqres API is available
    When I send a GET request to "/users/2"
    Then the response status code should be 200
    And the response should contain user details

  Scenario: Create a new user
    Given the Reqres API is available
    And I have a valid user payload
    When I send a POST request to "/users"
    Then the response status code should be 201
    And the response should contain user id

  Scenario: Update user using PUT
    Given the Reqres API is available
    And a user with id 2 exists
    When I send a PUT request to "/users/2"
    Then the response status code should be 200

  Scenario: Delete user
    Given the Reqres API is available
    And a user with id 2 exists
    When I send a DELETE request to "/users/2"
    Then the response status code should be 204
