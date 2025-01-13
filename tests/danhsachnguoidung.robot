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
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Avatar, Tên, Email, Số điện thoại, Bằng cấp, Học hàm, Trạng thái, Hành động.
    Sleep    0s
case005
    [Documentation]    Tìm kiếm bằng tên tồn tại (ví dụ: nga@gmail.com).
    Sleep    0s
case006
    [Documentation]    Tìm kiếm bằng tên không tồn tại.
     sleep    0s
    Fail    test fail
case007
    [Documentation]    Tìm kiếm email tồn tại (ví dụ: tạp chí).
    Sleep    0s
case008
    [Documentation]    Tìm kiếm bằng email không tồn tại.
    Sleep    0s
case009
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết.
    Sleep    0s
case010
    [Documentation]    Click nút "Sửa", thay đổi thông tin và kiểm tra thông báo thành công.
    Sleep    0s
case011
    [Documentation]    Click nút "Xóa" và kiểm tra thông báo xác nhận.
     sleep    0s
    Fail    test fail
case012
    [Documentation]    Click nút "Thêm", thay đổi thông tin và kiểm tra thông báo thành công.
    Sleep    0s
case013
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng.
    Sleep    0s
 case014
    [Documentation]    Thực hiện chỉnh sửa thông tin các trường hợp lệ.
    Sleep    0s
case015
    [Documentation]    Check data sau khi chỉnh sửa.
    sleep    0s
    Fail    test fail
case016
    [Documentation]    Thực hiện chỉnh sửa thông tin bỏ trống trường bắt buộc.
    Sleep    0s
case017
    [Documentation]    Thực hiện thêm mới thông tin với các trường được nhập hợp lệ.
    Sleep    0s
case018
    [Documentation]    Check data sau khi thêm mới.
    Sleep    0s
case019
    [Documentation]    Thực hiện chỉnh sửa thông tin bỏ trống trường bắt buộc.
    Sleep    0s
case020
    [Documentation]    Thực hiện xóa record.
    Sleep    0s
case021
    [Documentation]    Check data sau khi xóa.
    Sleep    0s