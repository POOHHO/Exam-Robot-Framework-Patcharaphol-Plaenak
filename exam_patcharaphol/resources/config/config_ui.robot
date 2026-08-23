*** Settings ***
### Library ###
Library             SeleniumLibrary
Library             Collections

### Common Keywords ###
Resource    ${CURDIR}/../../keywords/common_keyword/ui_keyword.robot

### Test Data ###
Variables    ${CURDIR}/../../testdata/testdata.yaml