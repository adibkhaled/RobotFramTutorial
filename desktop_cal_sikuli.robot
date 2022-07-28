*** Settings ***

Documentation     Sikuli Library Demo
Variables         properties.py
Library           SikuliLibrary
Suite Setup       log    running on ${properties.IMG_DIR}
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Resource          keyword_prop.resource

*** Test Cases ***
Mac calculator addition check
    Open Relocated item
    Open Calculator application
    Check addintion using calculator_app

*** Keywords ***

Add Needed Image Path
    Add Image Path    ${properties.IMG_DIR}

Open Relocated item
    clickButton     Open_file
    clickButton     Application_icon

Open Calculator application
    Double click    calculator_app.png

Check addintion using calculator_app
    Click   1_btn.png
    Click   +_btn.png
    Click   2_btn.png
    Click   equal_btn.png


# Run the script
# python3 -m robot -d results ./desktop_cal_sikuli.robot