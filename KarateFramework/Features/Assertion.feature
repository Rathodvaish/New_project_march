Feature: how to use assertion


Scenario: use  multiple array assertion
* def assertobject = 
"""
{"menu": {
      "id": "file",
      "value": "File",
      "popup": {
      	"menuitem": [
      		{"value": "New", "onclick": "CreateNewDoc()"}, 
      		{"value": "Open", "onclick": "OpenDoc()"},  
      		{"value": "Close", "onclick": "CloseDoc()"} 
                    ]
               }
         }
}
 """     
 * print assertobject
 * print assertobject.menu.id
 * print assertobject.menu.popup.menuitem[0]
 * def value = assertobject.menu.popup.menuitem[0].value
 * print value
 * match value == 'New'
  * match value == 'open'