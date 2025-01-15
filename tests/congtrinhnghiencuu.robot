*** Settings ***
Documentation    Danh sách khoa
Resource    ./common.robot

Test Teardown    Close All Browsers

*** Variables ***



*** Keywords ***



*** Test Cases ***
#  Đăng nhập với role giáo viên 
case001  
    [Documentation]    Kiểm tra tiêu đề trang là "Quản lý công trình khoa học"  
    Fail    Sai tên tiêu đề  

case002  
    [Documentation]    Kiểm tra sự hiện diện của trường "tìm kiếm mã hoặc tên"  
    Sleep    0s  

case003  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Sleep    0s  

case004  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Mã, Tên, Mặc định, Ngày tạo, Hành động  
    Sleep    0s  

case005  
    [Documentation]    Tìm kiếm tên tồn tại (ví dụ: tạp chí A)  
    Fail    không hiển thị data 

case006  
    [Documentation]    Tìm kiếm bằng mã không tồn tại  
    Sleep    0s  

case007  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết  
    Sleep    0s  

case008  
    [Documentation]    Kiểm tra data hiển thị dưới table  
    Sleep    0s  

case009  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng  
    Sleep    0s  

case010  
    [Documentation]    Click button "Nộp bài"  
    Sleep    0s  

case011  
    [Documentation]    Đăng nhập bằng role Khoa với khoa vừa được submit  
    Sleep    0s  

case012  
    [Documentation]    Click button "Rút bài"  
    Sleep    0s  

case013  
    [Documentation]    Check hiển thị button "Sửa"  
    Sleep    0s  

case014  
    [Documentation]    Thực hiện chỉnh sửa thông tin các trường hợp lệ  
    Sleep    0s  

case015  
    [Documentation]    Check data sau khi chỉnh sửa  
    Sleep    0s  

case016  
    [Documentation]    Thực hiện thêm mới thông tin với các trường được nhập hợp lệ  
    Sleep    0s  

case017  
    [Documentation]    Check data sau khi thêm mới  
    Sleep    0s  

case018  
    [Documentation]    Thực hiện chỉnh sửa thông tin bỏ trống trường bắt buộc  
    Sleep    0s  

case019  
    [Documentation]    Check hiển thị button "Xóa"  
    Sleep    0s  

case020  
    [Documentation]    Thực hiện xóa record  
    Sleep    0s  

case021  
    [Documentation]    Check data sau khi xóa  
    Sleep    0s  
# Đăng nhập với role trưởng khoa
case022  
    [Documentation]    Click button "Nộp bài"  
    Sleep    0s  

case023  
    [Documentation]    Check data vừa nộp  
    Sleep    0s  

case024  
    [Documentation]    Click button "Rút bài"  
    Sleep    0s  

case025  
    [Documentation]    Click button "Khoa từ chối"  
    Sleep    0s  

case026  
    [Documentation]    Click button "Khoa đồng ý"  
    Sleep    0s  

case027  
    [Documentation]    Check record khi khoa từ chối ở role giảng viên  
      Fail    không tìm thấy record

case028  
    [Documentation]    Check record khi khoa click đồng ý ở role giảng viên  
    Sleep    0s  

case029  
    [Documentation]    Check record khi khoa click đồng ý ở role hội đồng trường  
    Sleep    0s  

case030  
    [Documentation]    Check hiển thị button "Sửa"  
    Sleep    0s  

case031  
    [Documentation]    Thực hiện chỉnh sửa thông tin các trường hợp lệ  
    Sleep    0s  

case032  
    [Documentation]    Check data sau khi chỉnh sửa  
    Sleep    0s  

case033  
    [Documentation]    Thực hiện thêm mới thông tin với các trường được nhập hợp lệ  
    Sleep    0s  

case034  
    [Documentation]    Check data sau khi thêm mới  
    Sleep    0s  

case035  
    [Documentation]    Thực hiện chỉnh sửa thông tin bỏ trống trường bắt buộc  
    Sleep    0s  

case036  
    [Documentation]    Check hiển thị button "Xóa"  
    Sleep    0s  

case037  
    [Documentation]    Thực hiện xóa record  
    Sleep    0s  

case038  
    [Documentation]    Check data sau khi xóa  
    Sleep    0s  

# Đăng nhập với role admin
case047  
    [Documentation]    Kiểm tra tiêu đề trang là "Quản lý công trình khoa học"  
    Sleep    0s  

case048  
    [Documentation]    Kiểm tra sự hiện diện của trường "tìm kiếm mã hoặc tên"  
    Sleep    0s  

case049  
    [Documentation]    Kiểm tra sự hiện diện của nút "Tìm kiếm"  
    Sleep    0s  

case050  
    [Documentation]    Kiểm tra các cột trong bảng danh sách: ID, Mã, Tên, Mặc định, Ngày tạo, Hành động  
    Sleep    0s  

case051  
    [Documentation]    Tìm kiếm tên tồn tại (ví dụ: tạp chí A)  
    Sleep    0s  

case052  
    [Documentation]    Tìm kiếm bằng mã không tồn tại  
    Sleep    0s  

case053  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết  
    Sleep    0s  

case054  
    [Documentation]    Kiểm tra data hiển thị dưới table  
    Sleep    0s  

case055  
    [Documentation]    Click nút "Xem" và kiểm tra thông tin chi tiết hiển thị đúng  
    Sleep    0s  

case056  
    [Documentation]    Khi record có trạng thái là Hội đồng trường đang xem xét  
    Sleep    0s  

case057  
    [Documentation]    Click button Nhà trường từ chối  
    Sleep    0s  

case058  
    [Documentation]    Click button Nhà trường xuất bản  
    Sleep    0s  

case059  
    [Documentation]    Check record khi nhà trường từ chối ở role giảng viên  
    Sleep    0s  

case060  
    [Documentation]    Check record khi nhà trường click xuất bản ở role giảng viên  
    Sleep    0s  

case061  
    [Documentation]    Check record khi nhà trường từ chối ở role khoa  
    Sleep    0s  

case062  
    [Documentation]    Check record khi nhà trường click xuất bản ở role khoa  
    Sleep    0s  

case063  
    [Documentation]    Check data màn hình "Danh sách nghiên cứu đã công bố" sau khi xuất bản thành công  
    Sleep    0s  
