*** Settings ***

Documentation     Sikuli Library Demo
Library           SikuliLibrary

*** Keywords ***

clickButton
    [Arguments]    ${IMAGE}
    Wait Until Screen Contain    ${IMAGE}.png    3
    Click    ${IMAGE}.png
