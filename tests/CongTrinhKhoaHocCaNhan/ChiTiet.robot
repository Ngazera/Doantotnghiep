*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role giang vien
Suite Teardown    xoa sau khi dung xong
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role giang vien
    login role giao vien
    tao cong trinh cho man hinh chi tiet
    Click Element    //span[text()="Quản lý người dùng"]/parent::a


xoa sau khi dung xong
    [Documentation]    Xóa thất bại do người dùng hủy
    Click Button    //td[text()='test_cong_trinh_chi_tiet']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT

tao cong trinh cho man hinh chi tiet
    Go To    http://localhost/publication/create/
    Input Text    name=name    test_detail_name
    Select From List By Index    publication_type_id    1
    Input Text    name=organization_name    test_detail_org
    Input Text    name=issn    99998888
    Input Text    name=published_year    2024
    Select From List By Index    department_id    1
    Input Text    //label[text()='Contribution (%)']/following-sibling::input    100
    Input Text    name=description    test_detail
    Click Button    //button[@form='publicationForm']

*** Test Cases ***
case001
    [Documentation]    Kiểm tra người dùng
    ${kieu}    Get Text    //label[text()="Kiểu:"]/following-sibling::span
    Run Keyword If    '${kieu}'!='báo'    Fail    sai tên rồi
    ${issn}    Get Text    //label[text()="ISSN:"]/following-sibling::span
    Run Keyword If    '${issn}'!='99998888'    Fail    sai issn rồi
    ${org}    Get Text    //label[text()="Tổ chức:"]/following-sibling::span
    Run Keyword If    '${org}'!='test_detail_org'    Fail    sai tổ chức rồi
    ${yyyy}    Get Text    //label[text()="Năm công bố:"]/following-sibling::span
    Run Keyword If    '${yyyy}'!='test_detail_org'    Fail    sai năm công bố
    ${department}    Get Text    //label[text()="Khoa tiếp nhận:"]/following-sibling::span
    Run Keyword If    '${yyyy}'!='khoa1'    Fail    sai khoa tiếp nhận
    ${department}    Get Text    //label[text()="Khoa tiếp nhận:"]/following-sibling::span
    Run Keyword If    '${yyyy}'!='khoa1'    Fail    sai khoa tiếp nhận

