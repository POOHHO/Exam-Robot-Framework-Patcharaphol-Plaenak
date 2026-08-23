*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-04 Clicking Central The 1 Updates The Title
    [Documentation]    UI-04 Clicking Central The 1 Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${centralthe1card}    ${centralthe1card_h2}    ${centralthe1card_h3}