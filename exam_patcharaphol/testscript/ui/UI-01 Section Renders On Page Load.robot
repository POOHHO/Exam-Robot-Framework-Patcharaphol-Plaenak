*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-01 Section Renders On Page Load
    [Documentation]    UI-01 Section Renders On Page Load
    [Tags]    ui    regression    smoke    sit
    Verify default screen