*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
Suite Teardown    xoa sau khi dung xong
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    tao user dummy de kiem tra chi tiet
    Click Element    //span[text()="Quản lý người dùng"]/parent::a


xoa sau khi dung xong
    [Documentation]    Xóa thất bại do người dùng hủy
    Go To    http://localhost/person/list/
    Click Button    //td[text()='1111122222']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Sleep    1s
    Handle Alert    ACCEPT
    Close All Browsers

tao user dummy de kiem tra chi tiet
    Go To    http://localhost/person/create/
    Input Text    name=first_name    tao_de_sua
    Input Text    name=last_name    tao_de_sua
    Input Text    name=identification    1111122222
    Input Text    name=email    tao_de_sua@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Label    name=degree    Thạc sĩ
    Select From List By Label    name=academic_rank    Giáo Sư
    Execute Javascript    scrollTo(0,0)
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/

*** Test Cases ***
case001
    [Documentation]    Kiểm tra người dùng
    Click Button     //td[text()='1111122222']/following-sibling::td[@class='actions']/button[text()='Sửa']
    Input Text    name=first_name    first_name_updated
    Input Text    name=last_name    last_name_updated
    Input Text    name=phone_number    0911112222
    Input Text    name=email    mail_upd@gmail.com
    Select From List By Label    name=degree    Tiến Sĩ
    Select From List By Label    name=academic_rank    Giảng viên
    Execute Javascript    scrollTo(0,0)
    Click Button    //button[@form='personForm']

    # kiem tra
    Click Button     //td[text()='1111122222']/following-sibling::td[@class='actions']/button[text()='Xem']

    ${ten}    Get Text    //label[text()="Tên"]/following-sibling::span
    Run Keyword If    '${ten}'!='first_name_updated'    Fail    Sai giá trị trường tên

    ${ho}    Get Text    //label[text()='Họ']/following-sibling::span
    Run Keyword If    '${ho}'!= 'last_name_updated'    Fail    Sai giá trị trường Họ

    ${Email}    Get Text    //label[text()="Email"]/following-sibling::span
    Run Keyword If    '${Email}'!='mail_upd@gmail.com'    Fail    Sai giá trị trường Email

    ${Điện thoại}    Get Text    //label[text()='Điện thoại']/following-sibling::span
    Run Keyword If    '${Điện thoại}'!= '0911112222'    Fail    Sai giá trị trường Điện thoại

    ${Học vị}    Get Text    //label[text()='Học vị']/following-sibling::span
    Run Keyword If    '${Học vị}'!= 'Tiến Sĩ'    Fail    Sai giá trị trường Học vị 
    
    ${Học thuật}    Get Text    //label[text()='Học thuật']/following-sibling::span
    Run Keyword If    '${Học thuật}'!= 'Giảng viên'    Fail    Sai giá trị trường Học vị
