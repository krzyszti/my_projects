*** Settings ***
Library           Selenium2Library

*** Test Cases ***
case_1
    log    Search Robot in google
    Open Browser    http://www.google.pl    browser=chrome
