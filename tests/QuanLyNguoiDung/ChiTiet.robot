*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    tao user dummy de kiem tra chi tiet
    Click Element    //span[text()="Quản lý người dùng"]/parent::a


xoa sau khi dung xong
    [Documentation]    Xóa thất bại do người dùng hủy
    Click Button    //td[text()='test_add_successfully_email@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT

tao user dummy de kiem tra chi tiet
    Go To    http://localhost/person/create/
    Input Text    name=first_name    tao_de_xem_chi_tiet
    Input Text    name=last_name    tao_de_xem_chi_tiet
    Input Text    name=identification    tao_de_xem_chi_tiet
    Input Text    name=email    tao_de_xem_chi_tiet@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/

*** Test Cases ***
case001
    [Documentation]    Kiểm tra người dùng
    ${ten}    Get Text    //label[text()="Tên"]/following-sibling::span
    Run Keyword If    '${ten}'!='tao_de_xem_chi_tiet'    Fail    sai tên rồi
    ${ho}    Get Text    //label[text()="Họ"]/following-sibling::span
    if ho sai thi fail
