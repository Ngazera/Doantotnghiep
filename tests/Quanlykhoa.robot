*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001  
    [Documentation]    Kiểm tra sự hiện diện của trường "Danh sách khoa"  
    Sleep    0s  

case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng tên khoa"  
    Sleep    0s  

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Sleep    0s  

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách khoa: ID, Tên khoa, Tên trưởng khoa, Ngày tạo, Ngày cập nhật, Hành động  
    Sleep    0s  

case005  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết  
    Sleep    0s  

case006  
    [Documentation]    Click nút "Sửa" kiểm tra màn hình hiển thị  
    Sleep    0s  

case007  
    [Documentation]    Click nút "Xóa" và kiểm tra thông báo xác nhận  
    Sleep    0s  

case008  
    [Documentation]    Click nút "Thêm mới", kiểm tra màn hình hiển thị  
    Sleep    0s  

case009  
    [Documentation]    Thêm khoa mới với tên khoa hợp lệ và kiểm tra thông báo thành công  
    Sleep    0s  

case010  
    [Documentation]    Thêm khoa mới mà không nhập tên khoa, kiểm tra thông báo lỗi  
    Sleep    0s  

case011  
    [Documentation]    Thêm khoa mới mà không chọn trưởng khoa, kiểm tra thông báo lỗi  
    Sleep    0s  

case012  
    [Documentation]    Tìm kiếm khoa với tên khoa tồn tại, kiểm tra kết quả trả về  
    Sleep    0s  

case013  
    [Documentation]    Tìm kiếm khoa với tên khoa không tồn tại, kiểm tra thông báo "Không tìm thấy"  
    Sleep    0s  

case014  
    [Documentation]    Tìm kiếm khoa với từ khóa một phần của tên khoa, kiểm tra kết quả  
    Sleep    0s  

case015  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng  
    Sleep    0s  

case016  
    [Documentation]    Sửa tên khoa và kiểm tra thông báo thành công  
    Sleep    0s  

case017  
    [Documentation]    Sửa khoa mà không nhập tên khoa, kiểm tra thông báo lỗi  
    Sleep    0s  

case018  
    [Documentation]    Sửa khoa mới mà không chọn trưởng khoa, kiểm tra thông báo lỗi  
    Sleep    0s  

case019  
    [Documentation]    Xóa khoa và kiểm tra thông báo xác nhận  
    Sleep    0s  

case020  
    [Documentation]    Hủy bỏ xóa khoa và kiểm tra khoa vẫn còn trong danh sách  
    Sleep    0s  