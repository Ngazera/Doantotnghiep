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
    Click Button    //button[@id='add-new-department-btn']

*** Test Cases ***
case 001
    [Documentation]    Bỏ trống trường tên khoa khi thêm mới
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}
    ${tooltip}=    Get Element Attribute    id=submit-button    title

case 002 
    [Documentation]    Thêm mới thành công
    Input Text    ${Tên khoa}    Khoa Kỹ Thuật Điện
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}    
case 002 
    [Documentation]    Thêm mới thành công
    Input Text    ${Tên khoa}    Khoa Kỹ Thuật Điện
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}
case 002 
    [Documentation]    Thêm mới thành công
    Input Text    ${Tên khoa}    Khoa Kỹ Thuật Điện
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}
case 001 
    [Documentation]    Thêm mới thành công
    Input Text    ${Tên khoa}    Khoa Kỹ Thuật Điện
    Select From List By Index     //select[@name='leader_id']   2
    Click Button    ${Lưu}