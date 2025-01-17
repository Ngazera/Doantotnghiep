*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap cong trinh khoa hoc ca nhan role giang vien
Test Setup    Reload Page
*** Variables ***



*** Keywords ***
truy cap cong trinh khoa hoc ca nhan role giang vien
    login role giao vien
    tao cong trinh cho man hinh danh sach
    Click Element    //span[text()="Công trình khoa học cá nhân"]/parent::a

tao cong trinh cho man hinh danh sach
    Go To    http://localhost/publication/create/
    Input Text    name=name    test_xoa_name
    Select From List By Index    publication_type_id    1
    Input Text    name=organization_name    test_xoa_org
    Input Text    name=issn    99998888
    Input Text    name=published_year    2024
    Select From List By Index    department_id    1
    Input Text    //label[text()='Contribution (%)']/following-sibling::input    100
    Input Text    name=description    test_xoa
    Click Button    //button[@form='publicationForm']

*** Test Cases ***
case001
    [Documentation]    Xóa thất bại do người dùng hủy
    Click Button    //td[text()='test_xoa_name@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    DISMISS

case002
    [Documentation]    Kiểm tra nội dung message khi ấn xóa
    Click Button    //td[text()='test_xoa_name@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']


case003
    [Documentation]    Xóa thất bại do người dùng hủy
    Click Button    //td[text()='test_xoa_name@gmail.com']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT