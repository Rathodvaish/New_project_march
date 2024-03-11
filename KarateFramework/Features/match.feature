Feature: MATCH

Background: 
* url 'https://gorest.co.in/public/v2'
Scenario: get method
Given path '/users'
When method GET
Then status 200
And match responseStatus == 200
And assert responseStatus == 200
And match header name contains "Bhupen Dutta III"


Scenario: post method
Given path '/users'
* def data =
"""
{"id":6204945,"name":"vaish Dutta III","email":"dutta_bhupen_iii@sawayn.test","gender":"female","status":"active"}
"""
And request data
When method post
Then status 401

Scenario: use JSON object
* def valueArray  =
"""
{
"name" : "vaishnavi",
"value" : 10,
"sub" : "marathi" 
}
"""
* print valueArray
* set valueArray.name = "abc"
* print valueArray
* remove valueArray.name 
* print valueArray
And match karate.response.header("name") == "vaishnavi"

