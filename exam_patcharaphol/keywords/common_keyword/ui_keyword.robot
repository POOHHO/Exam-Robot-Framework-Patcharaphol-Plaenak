*** Keywords ***
Open Credit Card Page
    [Documentation]    Open Credit Card Page    
    Open Browser    ${URL}    ${BROWSER} 
    Maximize Browser Window
    Set Selenium Implicit Wait    ${IMPLICIT_TIMEOUT}
    Wait And Click Element    xpath=//button[text()="${confirm}"]
    sleep    ${IMPLICIT_TIMEOUT}
    Wait And Click Element    xpath=//a[@data-link="smenu-2"]

Wait And Click Element
    [Documentation]    Wait And Click Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Click Card Entity And Verify Title
    [Documentation]    Click Card Entity And Verify Title
    [Arguments]    ${entity alt text}    ${expected h2 title keyword}    ${expected h3 title keyword}
    Wait And Click Element    xpath=//a[@tabs-name='${entity alt text}']
    Wait Until Element Is Visible    //h2[normalize-space(.)="${expected h2 title keyword}"]/following-sibling::h3[contains(., "${expected h3 title keyword}")] 

Verify default screen
    [Documentation]    Verify default screen
    ${text}=    Get Text    xpath=//h1[contains(@class,'cnt-h2')]
    FOR    ${expected}    IN    @{expected_texts}
    Should Contain    ${text}    ${expected}
    END