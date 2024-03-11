Feature: get method

Background: set URL
* url 'https://gorest.co.in/public/v2'

Scenario: get the details of urs 2
Given path '/users'
When method GET
Then status 200

Scenario: Post method
Given path '/users'
* def data =
"""
{
"id":1,"name":"vaishnavi",
"email":"vaish@jerde-hudson.example",
"gender":"female","status":"active"}
"""
And request data
And header authorization = 'Bearer'+'216205388c2c43bb70a5f7a8cfa519edf2c579595e49b38e8766034fe925f7c1'
When method post 
Then status 401


Scenario: use param
Given path '/users'
And params gender = "male"
When method GET
Then status 200
And match params.gender == "male" 