*** Settings ***
Documentation    Kịch bản luồng test phê duyệt
Resource    ././common.robot

Test Teardown    Close All Browsers
*** Variables ***



*** Keywords ***

tao cong trinh khoa hoc
    login role giao vien
    Go To    http://localhost/publication/create/
    Execute Javascript    document.body.style.zoom="60%"
    Input Text    name=name    luong_name
    Select From List By Label    publication_type_id    tạp chí
    Input Text    name=organization_name    luong_org
    Input Text    name=issn    00001
    Input Text    name=published_year    2024
    Select From List By Label    department_id    Công nghệ thông tin
    Input Text    //label[text()='Contribution (%)']/following-sibling::input    100
    Input Text    name=description    luong_desc
    Click Button    //button[@form='publicationForm']

gui len khoa
    Go To    http://localhost/publication/list/
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/submit/')]

rut cong trinh
    Go To    http://localhost/publication/list/
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/withdraw/')]

logout
    Click Button    //i[@class="fas fa-sign-out-alt"]/parent::button

khoa tu choi
    login role truong khoa
    Go To    http://localhost/publication/list_approve/
    Execute Javascript    document.body.style.zoom="60%"
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/reject/')]

khoa chap nhan
    login role truong khoa
    Go To    http://localhost/publication/list_approve/
    Execute Javascript    document.body.style.zoom="60%"
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/approve/')]

nha truong xuat ban
    login role hoi dong truong
    Go To    http://localhost/publication/list_approve/
    Execute Javascript    document.body.style.zoom="60%"
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/publish/')]

nha truong tu choi
    login role hoi dong truong
    Go To    http://localhost/publication/list_approve/
    Execute Javascript    document.body.style.zoom="60%"
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    Click Element    //a[contains(@href, '/publication/status/') and contains(@href, '/reject/')]

kiem tra
    [Arguments]    ${trang_thai_mong_muon}
    Go To    http://localhost/publication/list_approve/
    Execute Javascript    document.body.style.zoom="60%"
    Click Button    //td[text()='luong_name']/following-sibling::td[@class='actions']/button[text()='Xem']
    Execute Javascript    document.body.style.zoom="60%"
    ${trang_thai}    Get Text    //div[@class="status-badge"]
    Run Keyword If    '${trang_thai_mong_muon}'!='${trang_thai}'    Fail    Sai trạng thái: Mong muốn ${trang_thai_mong_muon}, thực tế: ${trang_thai}

*** Test Cases ***

Test Case 1
    [Documentation]
    # = Luồng thành công =
    # 1. Giáo viên (thuộc khoa CNTT) tạo công trình cho khoa CNTT tạo công trình.
    # 2. Giáo viên gửi lên khoa
    # 3. Khoa (người dùng trưởng khoa CNTT) chấp nhận
    # 4. Trường chấp nhận và xuất bản 
    # 5. Kiểm tra 

    # 1.
    tao cong trinh khoa hoc
    # 2.
    gui len khoa
    # 3.
    khoa chap nhan
    # 4. 
    nha truong xuat ban
    # 5. 
    kiem tra    Đã xuất bản



