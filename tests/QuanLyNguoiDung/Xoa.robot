*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    tao user dummy de kiem tra xoa
    Click Element    //span[text()="Quản lý người dùng"]/parent::a

tao user dummy de kiem tra xoa
    Go To    http://localhost/person/create/
    Input Text    name=first_name    tao_de_xoa
    Input Text    name=last_name    tao_de_xoa
    Input Text    name=identification    tao_de_xoa
    Input Text    name=email    tao_de_xoa@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/

*** Test Cases ***
case001
    [Documentation]    Xóa thất bại do người dùng hủy
    Click Button    //td[text()='test_add_successfully_email@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    DISMISS

case002
    [Documentation]    Kiểm tra nội dung message khi ấn xóa
    Click Button    //td[text()='test_add_successfully_email@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']


case003
    [Documentation]    Xóa thành công
    Click Button    //td[text()='test_add_successfully_email@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT

    
