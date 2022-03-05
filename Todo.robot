*** Settings ***
Library          Selenium2Library
Library          Collections
Library          String
Variables        ${CURDIR}/Openbrowser.yaml
Resource         ${CURDIR}/KeywordTodo.robot
Suite Setup      Run Keyword  Open Browser chrome        
Suite Teardown   Close All Browsers

***Test Cases***

Scenario : Validate add item without specify info
    I want validate Add item without specify info

Scenario : Validate add item by specify language Thai
    I want validate add item by specify language Thai

Scenario : Validate add item by specify language Eng
    I want validate add item by specify language Eng

Scenario : Validate add item by specify spacial character
    I want validate add item by specify spacial character

Scenario : Validate add item by specify Number
    I want validate add item by specify Number

Scenario : Validate todo tasks then i select checkbox completed
    I want validate todo tasks then i select checkbox completed

Scenario : Validate todo tasks then i press delete completed
    I want validate todo tasks then i press delete completed

Scenario : Validate complete tasks existing
    I want validate complete tasks existing

Scenario : Validate complete tasks then i press delete completed
    I want validate complete tasks then i press delete completed
