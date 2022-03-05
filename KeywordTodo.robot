*** Settings ***
Library          Selenium2Library
Variables        ${CURDIR}/Openbrowser.yaml


***Variables***
${txt-newtask}              id=new-task
     

***Keyword***
Open Browser chrome
    Open Browser    ${base_url}   chrome
    Maximize Browser Window
    Set Selenium Speed    0.5

I want validate Add item without specify info
    Wait Until Page Contains 	  To Do List   	 timeout=30 	 error=Not found
    Mouse Over    //*[@id="add-item"]/button/i
    Click Element    //*[@id="add-item"]/button/i

I want validate add item by specify language Thai
    Input Text    ${txt-newtask}   ${datanewtaskTH} 
    Mouse Over    //*[@id="add-item"]/button/i
    Click Element    //*[@id="add-item"]/button/i
    Click Link      To-Do Tasks
    Wait Until Page Contains 	  สวัสดี   	 timeout=30 	 error=Not found

I want validate add item by specify language Eng
    Click Link      Add Item
    Input Text    ${txt-newtask}   ${datanewtaskEN} 
    Mouse Over    //*[@id="add-item"]/button/i
    Click Element    //*[@id="add-item"]/button/i
    Click Link      To-Do Tasks
    Wait Until Page Contains 	  Hello   	 timeout=30 	 error=Not found

I want validate add item by specify spacial character
    Click Link      Add Item
    Input Text    ${txt-newtask}   ${datanewtaskspacial} 
    Mouse Over    //*[@id="add-item"]/button/i
    Click Element    //*[@id="add-item"]/button/i
    Click Link      To-Do Tasks
    Wait Until Page Contains 	  สวัสดีHello%^#&(*($))?}|{>}   	 timeout=30 	 error=Not found
    
I want validate add item by specify Number
    Click Link      Add Item
    Input Text    ${txt-newtask}   ${datanewtasknumber} 
    Mouse Over    //*[@id="add-item"]/button/i
    Click Element    //*[@id="add-item"]/button/i
    Click Link      To-Do Tasks
    Wait Until Page Contains 	  01234567890   	 timeout=30 	 error=Not found

I want validate todo tasks then i select checkbox completed
    Checkbox Should Not Be Selected    //*[@id="2"]
    Click Element    id=text-2    
    Click Link      Completed
    Wait Until Page Contains 	  Hello   	 timeout=30 	 error=Not found

I want validate todo tasks then i press delete completed
    Click Link      To-Do Tasks
    Wait Until Page Contains 	  สวัสดีHello%^#&(*($))?}|{>}   	 timeout=30 	 error=Not found
    Click Element    //*[@id="2"]/span
    Wait Until Page Does Not Contain 	  สวัสดีHello%^#&(*($))?}|{>}   	 timeout=30 	 error=Not found

I want validate complete tasks existing
    Wait Until Page Contains 	  สวัสดี   	 timeout=30 	 error=Not found
    Wait Until Page Contains 	  01234567890   	 timeout=30 	 error=Not found
    Click Link      Completed

I want validate complete tasks then i press delete completed
    Wait Until Page Contains 	  Hello   	 timeout=30 	 error=Not found
    ${x}=      Get WebElements    //*[@id="1"]
    Sleep  1
    Click Button     ${x}
    Sleep  3
  
   
    Wait Until Page Does Not Contain 	  Hello   	 timeout=5 	 error=Not found






