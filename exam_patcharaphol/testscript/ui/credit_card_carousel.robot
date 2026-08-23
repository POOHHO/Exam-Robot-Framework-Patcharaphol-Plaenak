*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_ui.robot
Suite Setup         Open Credit Card Page
Suite Teardown      Close All Browsers

*** Test Cases ***
UI-01 Section Renders On Page Load
    [Documentation]    UI-01 Section Renders On Page Load
    [Tags]    ui    regression    smoke    sit
    Verify default screen

UI-02 Clicking Krungsri Credit Cards Updates The Title
    [Documentation]    UI-02 Clicking Krungsri Credit Cards Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${krungsricard}    ${krungsricard_h2}    ${krungsricard_h3}

UI-03 Clicking First Choice Updates The Title
    [Documentation]    UI-03 Clicking First Choice Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${firstchoice}    ${firstchoice_h2}    ${firstchoice_h3}

UI-04 Clicking Central The 1 Updates The Title
    [Documentation]    UI-04 Clicking Central The 1 Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${centralthe1card}    ${centralthe1card_h2}    ${centralthe1card_h3}
    
UI-05 Clicking Lotus's Money Plus Updates The Title
    [Documentation]    UI-05 Clicking Lotus's Money Plus Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${lotussmoney}    ${lotussmoney_h2}    ${lotussmoney_h3}

UI-06 Clicking HomePro Financial Card Updates The Title
    [Documentation]    UI-06 Clicking HomePro Financial Card Updates The Title
    [Tags]    ui    regression    smoke    sit
    Click Card Entity And Verify Title    ${homeprofinancial}    ${homeprofinancial_h2}    ${homeprofinancial_h3}


