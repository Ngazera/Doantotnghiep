*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001
    [Documentation]    thông tin fake
    Sleep    0s
case002
    [Documentation]    2
    Sleep    0s
case003
    [Documentation]    3
    Sleep    0s
case004
    [Documentation]    4
    Sleep    0s
case005
    [Documentation]    thông tin fake
    Sleep    0s
case006
    [Documentation]    thông tin fake
    Sleep    0s
case007
    [Documentation]    thông tin fake
    Sleep    0s
case008
    [Documentation]    thông tin fake
    Sleep    0s
    Fail    msg=Không tìm thấy cái gì trên màn
