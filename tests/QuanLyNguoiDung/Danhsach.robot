*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
Suite Teardown    
Test Setup    Reload Page
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    Click Element    //span[text()="Quản lý người dùng"]/parent::a

xoa sau khi dung xong
    [Documentation]    Xóa thất bại do người dùng hủy
    Go To    http://localhost/person/list/
    Click Button    //td[text()='tao_de_list@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Sleep    1s
    Handle Alert    ACCEPT
    Close All Browsers

tao user dummy de kiem tra list
    Go To    http://localhost/person/create/
    Input Text    name=first_name    tao_de_list
    Input Text    name=last_name    tao_de_list
    Input Text    name=identification    1234554321
    Input Text    name=email    tao_de_list@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/

*** Test Cases ***
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Quản lý người dùng"  
    Title Should Be    Quản lý người dùng


case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng tên, cccd..."  
    ${placeholder}=     Get Element Attribute    id=searchInput    placeholder
    Run Keyword If    '${placeholder}'!='Tìm kiếm bằng tên, cccd...'    Fail    Sai giá trị placeholder
    

case003  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Ảnh, Tên, Email, Điện thoại, Học vị, Học hàm, Trạng thái, Hành động  
    Page Should Contain    ID    
    Page Should Contain    Ảnh
    Page Should Contain    Tên
    Page Should Contain    CCCD
    Page Should Contain    Email
    Page Should Contain    Điện thoại
    Page Should Contain    Học vị
    Page Should Contain    Học thuật
    Page Should Contain    Hành động

   
case004  
    [Documentation]    Tìm kiếm bằng cccd tồn tại
    Input Text    id=searchInput    1234554321
    Element Should Contain    //table/tbody     1234554321

case005  
    [Documentation]    Tìm kiếm bằng cccd ko tồn tại
    Input Text    id=searchInput    98989898989
    Element Should Not Contain    //table/tbody     98989898989
    
case006  
    [Documentation]    Tìm kiếm bằng tên không tồn tại  
    Input Text    id=searchInput    tao_de_list
    Element Should Not Contain    //table/tbody     tao_de_list
    
case007  
    [Documentation]    Tìm kiếm tên tồn tại
     Input Text    id=searchInput    kotontai
    Element Should Not Contain    //table/tbody     kotontai
