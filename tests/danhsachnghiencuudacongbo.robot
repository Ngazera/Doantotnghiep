*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Nghiên cứu đã công bố"  
    Sleep    0s  

case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng tên, ISSN, tổ chức,..."  
    Sleep    0s  

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Sleep    0s  

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Bìa, Tên, Kiểu, Tổ chức, ISSN, Năm, Trạng thái, Hành động  
    Sleep    0s  

case005  
    [Documentation]    Tìm kiếm bằng tên tồn tại (ví dụ: 01)  
    Sleep    0s  

case006  
    [Documentation]    Tìm kiếm bằng tên không tồn tại  
    Sleep    0s  

case007  
    [Documentation]    Click nút "Xem" và kiểm tra màn hình hiển thị  
    Sleep    0s  

case008  
    [Documentation]    Click nút "Sửa" và kiểm tra màn hình hiển thị  
    Sleep    0s  

case009  
    [Documentation]    Click nút "Xóa" và kiểm tra thông báo xác nhận  
    Sleep    0s  

case010  
    [Documentation]    Click nút "Thêm" và kiểm tra màn hình hiển thị  
    Sleep    0s  

case011  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng  
    Sleep    0s  

case012  
    [Documentation]    Click nút "Download"  
    Sleep    0s  

