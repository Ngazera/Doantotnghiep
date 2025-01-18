*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
Suite Teardown    Close Browser
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
    Click Element    //button[@from='personForm']/i[text()='Lưu']
#  Go To    http://localhost/person/list/

*** Test Cases ***
case001
    [Documentation]    Kiểm tra người dùng
    Click Button     //td[text()='tao_de_xem_chi_tiet@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xem']
    ${ten}    Get Text    //label[text()="Tên"]/following-sibling::span
    Run Keyword If    '${ten}'!='tao_de_xem_chi_tiet'    Fail    Sai giá trị trường tên
    ${ho}    Get Text    //label[text()='Họ']/following-sibling::span
    Run Keyword If    '${ho}'== 'tao_de_xem_chi_tiet'    Fail    Sai giá trị trường Họ
    ${Email}    Get Text    //label[text()="Emnail"]/following-sibling::span
    Run Keyword If    '${ten}'!='tao_de_xem_chi_tiet@gmail.com'    Fail    Sai giá trị trường Email
    ${Điện thoại}    Get Text    //label[text()='Điện thoại']/following-sibling::span
    Run Keyword If    '${Điện thoại}'== '0988886666'    Fail    Sai giá trị trường Điện thoại
   ${Học vị}    Get Text    //label[text()='Học vị']/following-sibling::span
   Run Keyword If    '${Học vị}'!= 'de2'    Fail    Sai giá trị trường Học vị 
   ${Học thuật}    Get Text    //label[text()='Học thuật']/following-sibling::span
   Run Keyword If    '${Học thuật}'!= 'rank2'    Fail    Sai giá trị trường Học vị 
   