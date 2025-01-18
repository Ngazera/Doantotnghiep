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
    Tao record đe xem chi tiet
Tao record đe xem chi tiet
    [Documentation]    Thêm mới thành công
    Click Button    //button[@id='add-new-department-btn']
    Input Text    ${Tên khoa}    Khoa kế Toán
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}
    Go To    http://localhost/department/list/

*** Test Cases ***
case001
    [Documentation]    check chi tiết thông tin record
    Sleep    3s
    Execute JavaScript    window.scrollTo(0,768)
    Sleep    3s
    Click Button   //td[text()='Khoa kế Toán']/following-sibling::td[@class='actions']/button[text()='Xem']
    Sleep    3s
    ${Tên khoa}    Get Text    //label[text()='Tên khoa']/following-sibling::span
    Sleep    3s
    Element Should Contain    ${Tên khoa}    Khoa kế Toán    Sai giá trị trường tên khoa
    Sleep    3s
     ${Trưởng khoa}    Get Text    //label[text()='Trưởng khoa']/following-sibling::span
     
    Element Should Contain    ${Trưởng khoa}      gv     Sai giá trị trường trưởng khoa
    Sleep    3s
    Execute JavaScript    window.scrollTo(0,300)
    Click Element    //a[@class='btn btn-back']
case002
    [Documentation]    Xoá sau khi check chi tiết
    Go To    http://localhost/department/list/
    Click button    //td[text()='Khoa kế Toán']/following-sibling::td[@class='actions']/button[text()='Xóa']
    Handle Alert    ACCEPT  