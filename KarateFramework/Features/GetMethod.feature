Feature: use get method

Scenario: get method postive response
Given url 'https://gorest.co.in/public/v2/users'
When method GET
Then status 200
And match responseStatus == 200

Scenario: get method Negative response
Given url 'https://gorest.co.in/public/v2/users'
When method GET
Then status 400
And match responseMethod == GET

Scenario: get method using Path positve response
Given url 'https://gorest.co.in/public/v2/users'
And path 902
When method GET
Then status 200


Scenario: get method using Path Negative response
Given url 'https://gorest.co.in/public/v2/users?page'
And path 1
When method GET
Then status 200
* print response 