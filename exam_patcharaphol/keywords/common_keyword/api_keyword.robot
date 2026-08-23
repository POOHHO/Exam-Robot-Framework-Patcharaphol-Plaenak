# *** Settings ***
# Library    Collections
# Library    OperatingSystem

*** Keywords ***
Group Posts By User ID
    [Arguments]    ${posts}

    ${grouped}=    Create Dictionary

    FOR    ${post}    IN    @{posts}
        ${user_id}=    Get From Dictionary    ${post}    userId
        ${title}=      Get From Dictionary    ${post}    title

        ${exists}=    Run Keyword And Return Status
        ...    Dictionary Should Contain Key    ${grouped}    ${user_id}

        IF    ${exists}
            ${user_data}=    Get From Dictionary    ${grouped}    ${user_id}

            ${titles}=    Get From Dictionary    ${user_data}    titles
            Append To List    ${titles}    ${title}

            ${count}=    Get From Dictionary    ${user_data}    totalPosts
            ${count}=    Evaluate    ${count} + 1

            Set To Dictionary    ${user_data}
            ...    totalPosts=${count}
        ELSE
            ${titles}=    Create List    ${title}

            ${user_data}=    Create Dictionary
            ...    userId=${user_id}
            ...    titles=${titles}
            ...    totalPosts=${1}

            Set To Dictionary    ${grouped}    ${user_id}    ${user_data}
        END
    END

    ${results}=    Create List
    @{user_ids}=    Get Dictionary Keys    ${grouped}

    FOR    ${user_id}    IN    @{user_ids}
        ${user_data}=    Get From Dictionary    ${grouped}    ${user_id}
        ${titles}=       Get From Dictionary    ${user_data}    titles
        ${count}=        Get From Dictionary    ${user_data}    totalPosts

        ${title_string}=    Evaluate    ", ".join($titles)

        ${result}=    Create Dictionary
        ...    userId=${user_id}
        ...    titles=${title_string}
        ...    totalPosts=${count}

        Append To List    ${results}    ${result}
    END

    RETURN    ${results}

Print Final Output
    [Arguments]    ${results}
    ${json_result}=    Evaluate    json.dumps(${results}, indent=2, ensure_ascii=False)    json
    Set Test Message    ${json_result}

    ${html_content}=    Catenate    SEPARATOR=\n
    ...    <html>
    ...    <head><meta charset="UTF-8"><title>Posts grouped by userId</title></head>
    ...    <body>
    ...    <h2>Posts grouped by userId</h2>
    ...    <pre>${json_result}</pre>
    ...    </body>
    ...    </html>

    Create File    ${OUTPUT_DIR}/../output/output.html    ${html_content}    encoding=UTF-8
    File Should Exist    ${OUTPUT_DIR}/../output/output.html
    Log    output.html written to: ${OUTPUT_DIR}/../output/output.html    INFO