*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-06 Clicking HomePro Financial Card Updates The Title
    [Documentation]    UI-06 Clicking HomePro Financial Card Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${homeprofinancial}    ${homeprofinancial_h2}    ${homeprofinancial_h3}