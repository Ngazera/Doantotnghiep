*** Settings ***
Resource    ././common.robot
Suite Setup     truy cap bằng role Admin
Test Teardown    Reload Page
Suite Teardown    Close Browser
*** Variables ***
${Lưu}    //button[@id='new-department-save']
${Tên khoa}    //label[text()='Tên khoa']/following-sibling::input

*** Keywords ***
truy cap bằng role Admin
    login role hoi dong truong
    Click Element    //span[text()='Danh sách khoa']
    Tao record đe xoa
Tao record đe xoa
    [Documentation]    Thêm mới thành công
    Click Button    //button[@id='add-new-department-btn']
    Input Text    ${Tên khoa}    Khoa kế Toán
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}

*** Test Cases ***
case001
    [Documentation]    xoá thất bại
    Click button    //td[text()='Khoa kế toán']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    DISMISS
 case002
    [Documentation]    xoá thành công
    Click button    //td[text()='Khoa kế toán']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT  
    

