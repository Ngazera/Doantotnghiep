*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
case001
    [Documentation]    Kiểm tra tiêu đề trang là "Quản lý công trình khoa học cá nhân".
    Sleep    0s
case002
    [Documentation]    Kiểm tra sự hiện diện của trường "Tìm kiếm bằng mã hoặc tên".
    Sleep    0s
case003
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm".
    Sleep    0s
case004
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Bìa, Tên, Kiểu, Tổ chức, ISSN, Năm, Trạng thái, Hành động
    Sleep    0s
case005
    [Documentation]    Tìm kiếm bằng mã tồn tại (ví dụ: tc001).
    Sleep    0s
case006
    [Documentation]    Tìm kiếm bằng mã không tồn tại.
    Sleep    0s
case007
    [Documentation]    Tìm kiếm tên tồn tại (ví dụ: tạp chí).
    Sleep    0s
case008
    [Documentation]    Tìm kiếm bằng mã không tồn tại.
    Sleep    0s
case009
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết.
    Sleep    0s
case010
    [Documentation]    Click nút "Sửa", thay đổi thông tin và kiểm tra thông báo thành công.
    Sleep    0s
case011
    [Documentation]    Click nút "Xóa" và kiểm tra thông báo xác nhận.
    Sleep    0s
case012
    [Documentation]    Click nút "Thêm", thay đổi thông tin và kiểm tra thông báo thành công.
    Sleep    0s
case013
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng.
    Sleep    0s
