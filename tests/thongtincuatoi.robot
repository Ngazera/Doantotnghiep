*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Thông tin của tôi"  
    Sleep    0s  

case002  
    [Documentation]    Kiểm tra thông tin hiển thị  
    Sleep    0s  

case003  
    [Documentation]    Thực hiện chỉnh sửa thông tin hợp lệ  
    Sleep    0s  
