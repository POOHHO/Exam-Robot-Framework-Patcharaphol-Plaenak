*** Settings ***
Resource    ${CURDIR}/../../resources/config/config_api.robot

*** Test Cases ***
Group Posts By User ID
    [Documentation]    Retrieve posts and group them by userId

    GROUP    Retrieve JSON data from API
    ${response}=    GET    ${BASE_URL}${ENDPOINT}
    Should Be Equal As Integers    ${response.status_code}    200
    END
    GROUP    Convert response JSON
    ${posts}=    Evaluate    $response.json()
    END
    GROUP    Group posts by userId and create the required output
    ${results}=    Group Posts By User ID    ${posts}
    END
    GROUP    Verify that output contains the required fields
      FOR    ${item}    IN    @{results}
        Dictionary Should Contain Key    ${item}    userId
        Dictionary Should Contain Key    ${item}    titles
        Dictionary Should Contain Key    ${item}    totalPosts
        Should Not Be Empty    ${item}[titles]
        Should Be True    ${item}[totalPosts] > 0
      END
    END
    GROUP    Print final Output
    Print Final Output    results=${results}
    END