Feature: query
Scenario: query
* def query = {status:'active'}
Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200

