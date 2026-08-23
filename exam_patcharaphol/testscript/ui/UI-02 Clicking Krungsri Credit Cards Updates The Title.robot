*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-02 Clicking Krungsri Credit Cards Updates The Title
    [Documentation]    UI-02 Clicking Krungsri Credit Cards Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${krungsricard}    ${krungsricard_h2}    ${krungsricard_h3}