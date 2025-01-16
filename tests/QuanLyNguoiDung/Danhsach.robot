*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
Test Setup    Reload Page
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    Click Element    //span[text()="Quản lý người dùng"]/parent::a

*** Test Cases ***
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Quản lý người dùng"  
    Title Should Be    Quản lý người dùng


case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm tên, email, ID, .."  
    ${placeholder}=     Get Element Attribute    id=searchInput    placeholder
    Run Keyword If    '${placeholder}'!='Tìm kiếm bằng tên, ISSN, tổ chức...'    Fail    Sai giá trị placeholder
    

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Page Should Contain Button    //button[text()='Tìm Kiếm']

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Ảnh, Tên, Email, Điện thoại, Học vị, Học hàm, Trạng thái, Hành động  
    Element Should Contain    //table/thead/tr[1]    ID    
    Element Should Contain    //table/thead/tr[1]    Ảnh
    Element Should Contain    //table/thead/tr[1]    Tên
    Element Should Contain    //table/thead/tr[1]    Email
    Element Should Contain    //table/thead/tr[1]    Điện thoại
    Element Should Contain    //table/thead/tr[1]    Học vị
    Element Should Contain    //table/thead/tr[1]    Học hàm
    Element Should Contain    //table/thead/tr[1]    Trạng thái
    Element Should Contain    //table/thead/tr[1]    Hành động      Tên cột phải là "Hành Động"

   
case005  
    [Documentation]    Tìm kiếm bằng email tồn tại (ví dụ: ngant12022002@gmail.com)  
    Input Text    id=searchInput    ngant12022002@gmail.com
    Element Should Contain    //table/tbody     ngant12022002@gmail.com
    
case006  
    [Documentation]    Tìm kiếm bằng tên không tồn tại  
    Input Text    id=searchInput    MINH@gmail.com
    Element Should Contain    //table/tbody     MINH@gmail.com
    
case007  
    [Documentation]    Tìm kiếm tên tồn tại (ví dụ: Ngà)  
     Input Text    id=searchInput    Ngà
    Element Should Contain    //table/tbody     Ngà

case008  
    [Documentation]    Tìm kiếm bằng tên không tồn tại  
     Input Text    id=searchInput    ABCD
    Element Should Contain    //table/tbody     ABCD
