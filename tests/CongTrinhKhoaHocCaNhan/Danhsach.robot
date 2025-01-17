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
    Input Text    name=name    test_list_name
    Select From List By Index    publication_type_id    1
    Input Text    name=organization_name    test_list_org
    Input Text    name=issn    99998888
    Input Text    name=published_year    2024
    Select From List By Index    department_id    1
    Input Text    //label[text()='Contribution (%)']/following-sibling::input    100
    Input Text    name=description    test_list
    Click Button    //button[@form='publicationForm']

*** Test Cases ***
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Công trình khoa học cá nhân"  
    Title Should Be    Công trình khoa học cá nhân


case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng tên, ISSN, tổ chức..."  
    ${placeholder}=     Get Element Attribute    id=searchInput    placeholder
    Run Keyword If    '${placeholder}'!='Tìm kiếm bằng tên, ISSN, tổ chức...'    Fail    Sai giá trị placeholder
    

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Page Should Contain Button    //button[text()='Tìm Kiếm']

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Ảnh, Tên, Email, Điện thoại, Học vị, Học hàm, Trạng thái, Hành động  
    Element Should Contain    //table/thead/tr[1]    ID    
    Element Should Contain    //table/thead/tr[1]    Bìa
    Element Should Contain    //table/thead/tr[1]    Tên
    Element Should Contain    //table/thead/tr[1]    Kiểu
    Element Should Contain    //table/thead/tr[1]    Tổ chức
    Element Should Contain    //table/thead/tr[1]    ISSN
    Element Should Contain    //table/thead/tr[1]    Năm
    Element Should Contain    //table/thead/tr[1]    Trạng thái
    Element Should Contain    //table/thead/tr[1]    Hành động      Tên cột phải là "Hành Động"

   
case005  
    [Documentation]    Tìm kiếm bằng tên tồn tại
    Input Text    id=searchInput    test_list_name
    Element Should Contain    //table/tbody     test_list_name
    
case006  
    [Documentation]    Tìm kiếm bằng tên không tồn tại  
    Input Text    id=searchInput    abzdsfdsfdfdfdfd
    Element Should Contain    //table/tbody     abzdsfdsfdfdfdfd
    
case007  
    [Documentation]    Tìm kiếm ISSN tồn tại
     Input Text    id=searchInput    99998888
    Element Should Contain    //table/tbody     99998888

case008  
    [Documentation]    Tìm kiếm ISSN không tồn tại
     Input Text    id=searchInput    8745843453
    Element Should Contain    //table/tbody     8745843453

case009
    [Documentation]    Tìm kiếm tổ chức tồn tại
     Input Text    id=searchInput    99998888
    Element Should Contain    //table/tbody     99998888

case010 
    [Documentation]    Tìm kiếm tổ chức không tồn tại
     Input Text    id=searchInput    test_list_org1
    Element Should Contain    //table/tbody     test_list_org1
