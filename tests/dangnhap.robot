*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001
    [Documentation]    Kiểm tra nhập sai tên đăng nhập, nhập đúng Password
    Sleep    0s
case002
    [Documentation]    Kiểm tra nhập đúng tên đăng nhập, nhập sai Password
    Sleep    0s
case003
    [Documentation]    Kiểm tra nhập sai tên đăng nhập, nhập sai Password
    Sleep    0s
case004
    [Documentation]    Kiểm tra nhập tên đăng nhập hợp lệ, bỏ trống Password
    Sleep    0s
case005
    [Documentation]    Kiểm tra bỏ trống tên đăng nhập, nhập đúng Password
    Sleep    0s
case006
    [Documentation]    Kiểm tra bỏ trống cả tên đăng nhập và Password
    Sleep    0s
case007
    [Documentation]    Kiểm tra nhập đúng tên đăng nhập và password
    Sleep    0s