Feature: Sample feature

Scenario: print hi
 * print 'vaishnavi'
 * print 'i am vaish'
 * def value = 10
 * print value  

Scenario: Print hello
* print 'Hello World!!'
* print 'I am Vanita'
* def value = 200
* print value

Scenario: print value
* def a = 10
* def b = 20
* print 'addition:' + (a + b)

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
And match response == {
"name" : "vaishnavi",
"value" : 10,
"sub" : "marathi" 
}


Scenario: How to use JsonObject
* def valueArray1 =  read('D:/eclipse-workspace/KarateFramework/src/test/resources/Payload/user.json')
* print valueArray1
* print valueArray1[1]
* print valueArray1.length 
* print valueArray1[1].name
And request 










