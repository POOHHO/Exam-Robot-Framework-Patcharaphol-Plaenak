*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-03 Clicking First Choice Updates The Title
    [Documentation]    UI-03 Clicking First Choice Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${firstchoice}    ${firstchoice_h2}    ${firstchoice_h3}