*** Settings ***
### Library ###
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem

### Common Keywords ###
Resource    ${CURDIR}/../../keywords/common_keyword/api_keyword.robot

### Test Data ###
Variables    ${CURDIR}/../../testdata/testdata.yaml