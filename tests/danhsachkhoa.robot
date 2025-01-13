*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001
    [Documentation]    đăng nhập bằng role giảng viên, kiểm tra xem có màn hình danh sách khoa không
    login role giao vien
    Element Should Not Be Visible    Danh sách khoa

case002
    [Documentation]    đăng nhập bằng role trưởng khoa, kiểm tra xem có màn hình danh sách khoa không
    login role truong khoa
    Element Should Not Be Visible    Danh sách khoa

case003
    [Documentation]    đăng nhập bằng role hội đồng trường, kiểm tra xem có màn hình danh sách khoa không
    login role hoi dong truong
    Element Should Be Visible    Danh sách khoa

case004
    [Documentation]    đăng nhập bằng role hội đồng trường, thêm khoa mới, input đúng tạo thành công
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=add-new-department-btn
    Input Text    new-department-name    tao khoa moi
    Select From List By Index    new-department-leader-id    1
    Click Button    new-department-save
    Page Should Contain    Department created successfully

case005
    [Documentation]    đăng nhập bằng role hội đồng trường, thêm khoa mới, nhập thiếu tên khoa
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=add-new-department-btn
    Input Text    new-department-name    tao khoa moi
    Click Button    new-department-save
    Page Should Not Contain    Department created successfully

case006
    [Documentation]    đăng nhập bằng role hội đồng trường, thêm khoa mới, chọn thiếu trưởng khoa
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=add-new-department-btn
    Select From List By Index    new-department-leader-id    1
    Click Button    new-department-save
    Page Should Not Contain    Department created successfully

case007
    [Documentation]    đăng nhập bằng role hội đồng trường, thêm khoa mới, nhập thiếu tất cả
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=add-new-department-btn
    Click Button    new-department-save
    Page Should Not Contain    Department created successfully

case008
    [Documentation]    đăng nhập bằng role hội đồng trường, sửa tên khoa
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=//td[text()='tao khoa moi']//following-sibling::td[@class='actions']/button[text()="Sửa"]
    Input Text    new-department-name    tao khoa moi 12345
    Click Button    new-department-save
    Page Should Not Contain    Department created successfully

case009
    [Documentation]    đăng nhập bằng role hội đồng trường, xóa 
    login role hoi dong truong
    Go To    http://localhost/department/list/
    Click Button    locator=//td[text()='tao khoa moi 12345']//following-sibling::td[@class='actions']/button[text()="Xóa"]
    Handle Alert    ACCEPT
    Page Should Not Contain    Department created successfully

