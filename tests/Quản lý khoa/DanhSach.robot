*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot
Suite Setup    Truy cap chuc nang quan ly khoa bang role hoi dong truong
Test Setup    Reload Page
Test Teardown    Close All Browsers

*** Variables ***
${Tìm kiếm}    //button[text()='Tìm kiếm']


*** Keywords ***
Truy cap chuc nang quan ly khoa bang role hoi dong truong
    login role hoi dong truong
    Click Element    //span[text()='Danh sách khoa']

*** Test Cases ***
case001  
    [Documentation]    Kiểm tra sự hiện diện của trường "Danh sách khoa"  
    Title Should Be    Quản lý khoa

case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng tên khoa"  
    ${placeholder}    Get Element Attribute    id=searchInput   placeholder
    Run Keyword If    '${placeholder}'!= 'Tìm kiếm bằng tên khoa'    Fail    Sai tên placeholder

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Page Should Contain Button    Tìm kiếm

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách khoa: ID, Tên khoa, Tên trưởng khoa, Ngày tạo, Ngày cập nhật, Hành động  
    Element Should Contain    //table/thead/tr[1]   ID    Tên trường phải là ID
    Element Should Contain    //table/thead/tr[1]   Tên khoa    Tên trường phải là Tên Khoa
    Element Should Contain    //table/thead/tr[1]   Tên trưởng khoa    Tên trường phải là Tên trưởng khoa
    Element Should Contain    //table/thead/tr[1]   Ngày tạo    Tên trường phải là Ngày tạo
    Element Should Contain    //table/thead/tr[1]   Ngày cập nhật    Tên trường phải là Ngày cập nhật
    Element Should Contain    //table/thead/tr[1]   Hành động    Tên trường phải là Hành độngs


case012  
    [Documentation]    Tìm kiếm khoa với tên khoa tồn tại, kiểm tra kết quả trả về  
    Input Text    id= searchInput    Công nghệ thông tin
    Element Should Contain    //table/tbody/tr[2]/td[02]    Công nghệ thông tin
case013  
     [Documentation]    Tìm kiếm khoa với tên khoa không tồn tại, kiểm tra thông báo "Không tìm thấy"  
    Input Text    id= searchInput    Không có thông tin
    Element Should Contain    //table/tbody/    Không tìm thấy thông tin

case014  
    [Documentation]    Tìm kiếm khoa với từ khóa một phần của tên khoa, kiểm tra kết quả  
     Input Text    id= searchInput    nghệ
    Element Should Contain    //table/tbody/   Công nghệ thông tin

