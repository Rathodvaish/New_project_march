Feature: fetching User Details

  Scenario: testing the get call for User Details
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * print 'pppppppppppppppppppppp'