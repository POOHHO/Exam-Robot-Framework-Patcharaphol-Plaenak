*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-05 Clicking Lotus's Money Plus Updates The Title
    [Documentation]    UI-05 Clicking Lotus's Money Plus Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${lotussmoney}    ${lotussmoney_h2}    ${lotussmoney_h3}