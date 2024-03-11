Feature: file uploading code

Background: set URL
* url 'https://gorest.co.in/public'

Scenario: file send to server
Given path '/'
And header content-type = 'image.png'
And request karate.read ("we have to give resource folder path like '/file.png'")	
When method post
Then status 201
