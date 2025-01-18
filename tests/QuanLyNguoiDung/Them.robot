*** Settings ***
Documentation    Danh sách khoa
Resource    ././common.robot

# Test Teardown    Close All Browsers
Suite Setup    truy cap quan ly nguoi dung bang role hoi dong truong
Test Setup    Reload Page
*** Variables ***



*** Keywords ***
truy cap quan ly nguoi dung bang role hoi dong truong
    login role hoi dong truong
    Click Element    //span[text()="Quản lý người dùng"]/parent::a
    Click Button    locator=//i[text()='+']/parent::button

*** Test Cases ***
case001
    [Documentation]    Thêm mới thành công  
    Input Text    name=first_name    test_add_successfully_first_name
    Input Text    name=last_name    test_add_successfully_last_name
    Input Text    name=identification    test_add_successfully_identification
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    # Ẩn overlay hoặc modal nếu có
    Execute JavaScript    document.querySelector('.overlay-class').style.display = 'none'
    # Cuộn lên đầu trang
    Execute JavaScript    window.scrollTo(0, 0)
    # Đảm bảo nút đăng ký có thể click được
    Wait Until Element Is Visible    xpath=//button[@form='personForm']
    Click Button    //button[@form='personForm']
    
    Element Should Contain    locator=//tbody    expected=test_add_successfully_email@gmail.com
case002
    [Documentation]    Thêm mới thất bại do first_name trống
    Input Text    name=first_name    text=
    Input Text    name=last_name    test_add_fail_last_name
    Input Text    name=identification    test_add_fail_identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	
case003
    [Documentation]    Thêm mới thất bại do first_name quá 50 ký tự
    Input Text    name=first_name    text=abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcd51
    Input Text    name=last_name    test_add_fail_last_name
    Input Text    name=identification    test_add_fail_identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	

case004
    [Documentation]    Thêm mới thất bại do last_name trống
    Input Text    name=first_name    text=test_add_fail
    Input Text    name=last_name    text=
    Input Text    name=identification    test_add_fail_identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	
case005
    [Documentation]    Thêm mới thất bại do last_name quá 50 ký tự
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcd51
    Input Text    name=identification    test_add_fail_identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	


case006
    [Documentation]    Thêm mới thất bại do cccd trống
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	


case007
    [Documentation]    Thêm mới thất bại do cccd quá 50 ký tự
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcd51
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	



case008
    [Documentation]    Thêm mới thất bại do cccd trùng
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=test_add_successfully_identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	


case009
    [Documentation]    Thêm mới thất bại do cccd trùng
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification
    Input Text    name=email    test_add_fail_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	


case010
    [Documentation]    Thêm mới thất bại do email trùng
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	
case011
    [Documentation]    Thêm mới thất bại do email sai định dạng
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_emailgmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	

case012
    [Documentation]    Thêm mới thất bại do điện thoại quá 20 ký tự
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    098888666609888866661
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	


case013
    [Documentation]    Thêm mới thất bại do điện thoại nhập chữ
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    abcdeabcde
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	
case014
    [Documentation]    Thêm mới thất bại do điện thoại nhập chữ
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    abcdeabcde
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	

case015
    [Documentation]    Thêm mới thất bại do avatar quá 10mb
    Input Text    name=first_name    text=first_name
    Input Text    name=last_name    text=last_name
    Input Text    name=identification    text=identification22
    Input Text    name=email    test_add_successfully_email@gmail.com
    Input Text    name=phone_number    0988886666
    Select From List By Index    name=degree    2
    Select From List By Index    name=academic_rank    2
    Choose File    id=avatarInput    D:\\local\\Doantotnghiep\\resources\\img\\img1.jpg
    Click Button    //button[@form='personForm']
    Go To    http://localhost/person/list/
    Element Should Not Contain    locator=//tbody    expected=test_add_fail_email@gmail.com	
