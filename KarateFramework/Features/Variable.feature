Feature: create variable
# <gerkin keyword> def keyword <variable_name>= value

Background: when we want to pass the data from data scenario to scenario then we have to use backgournd to store the data
Given def name = "rathod"

Scenario: create veriable
Given def vari_int = 10
And def vari_string = "vaishn"
And def vari_int1 = 20
Then print vari_int + ' '  + vari_string
Then print vari_int + vari_int1
Then print "background = " , name + vari_int


Scenario: #* def keyword <variable_name>= value
* def vari_int = 40
And def vari_string = "vaishn"
And def vari_int1 = 50
Then print vari_int + ' '  + vari_string
Then print vari_int + vari_int1
Then print 'background =', name + vari_int