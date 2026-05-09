# ecommerce-sales-analysis
**Phân tích hành vi khách hàng và hiệu suất kinh doanh bằng SQL Server và Power BI.**

**1. Tổng quan.**
Dựa trên dữ liệu năm 2018 (từ tháng 1 đến tháng 12), hệ thống ghi nhận sự tăng trưởng ổn định với tổng doanh thu đạt $437.8K và lợi nhuận ròng là $37K.

Giá trị đơn hàng trung bình (AOV): Đạt $875.5, đây là một chỉ số khá tốt cho thấy khách hàng có xu hướng chốt các giỏ hàng có giá trị trung bình cao.

Danh mục chủ lực: Ngành hàng Clothing (Thời trang) đóng góp tỷ trọng lớn nhất về số lượng (62.6%), tuy nhiên Electronics (Điện tử) lại là nhóm mang lại giá trị gia tăng đáng kể cho doanh thu tổng thể.

**2. Phân tích Giữ chân khách hàng (Cohort Retention Insight)**

- Điểm sáng Tháng 02/2018: Nhóm khách hàng gia nhập vào tháng 2 có lòng trung thành đột biến. Tỷ lệ quay lại (Retention Rate) đạt 65.85% ở tháng thứ nhất và vẫn giữ mức 51.22% ở tháng thứ hai. Điều này cho thấy chiến dịch Remarketing hoặc chất lượng dịch vụ trong giai đoạn này cực kỳ hiệu quả.

- Rủi ro từ nhóm Tháng 01/2018: Ngược lại, nhóm khách hàng tháng 1 có tỷ lệ rời bỏ (Churn Rate) rất cao, chỉ 1.69% khách quay lại sau tháng đầu tiên.

- **Hành động đề xuất**: Có thể thực hiện triển khai các chương trình khuyến mãi tương tự của tháng 2 để áp dụng công thức thành công này cho các tháng thấp điểm, nhằm giảm chi phí thu hút khách hàng mới.

**3. Cấu trúc Doanh thu & Tăng trưởng**
Biểu đồ so sánh giữa Khách hàng mới (New Acquisition) và Khách hàng quay lại (Returning) cho thấy:

- Động lực tăng trưởng: Doanh thu hiện tại vẫn phụ thuộc lớn vào việc tìm kiếm khách hàng mới. Đây là dấu hiệu của một doanh nghiệp đang trong giai đoạn mở rộng thị trường mạnh mẽ.

- Cơ hội tối ưu: Mặc dù khách hàng quay lại chiếm tỷ trọng nhỏ hơn, nhưng họ mang lại lợi nhuận ổn định với chi phí tiếp thị thấp hơn nhiều so với khách mới.

- **Hành động đề xuất**: Cần cân đối lại ngân sách Marketing, chuyển dịch một phần từ quảng cáo hiển thị sang các chương trình CRM (Email Marketing, Loyalty Program) để tối ưu hóa giá trị vòng đời khách hàng (LTV).

**4. Hiệu quả Lợi nhuận theo Phương thức thanh toán**
- Sử dụng phân tích trục kép (Dual-axis) để so sánh giữa Lợi nhuận và Số lượng đơn hàng:

- Hiệu quả từ EMI & Credit Card: Mặc dù số lượng giao dịch qua Trả góp (EMI) và Thẻ tín dụng thấp hơn nhiều so với COD (Thanh toán khi nhận hàng), nhưng các phương thức này mang lại Lợi nhuận trên mỗi đơn hàng cao hơn rõ rệt.

- Rủi ro từ COD: Phương thức COD chiếm tỷ trọng đơn hàng cao nhất (47%) nhưng tiềm ẩn rủi ro về hoàn hàng và chi phí vận hành cao, làm ảnh hưởng đến biên lợi nhuận thực tế.

- **Hành động đề xuất**: Thúc đẩy thanh toán không dùng tiền mặt thông qua các chương trình chiết khấu nhẹ hoặc hoàn tiền (Cashback) để vừa tăng AOV, vừa đảm bảo lợi nhuận ròng an toàn hơn.

**5. Kết luận & Đề xuất chiến lược**
- **Tập trung vào AOV**: Với mức AOV hiện tại ($875), doanh nghiệp nên triển khai chiến thuật "Bán theo combo" hoặc thiết lập ngưỡng "Freeship" cao hơn một chút để đẩy giá trị giỏ hàng lên mức $950 - $1000.

- **Cải thiện Retention**: Ưu tiên chăm sóc tệp khách hàng cũ thông qua dữ liệu từ bảng Cohort. Đặc biệt chú trọng vào việc gửi ưu đãi vào tháng thứ 3 sau khi khách mua đơn đầu tiên (thời điểm tỷ lệ churn bắt đầu tăng).

- **Mở rộng khu vực**: Tập trung nguồn lực vào các thành phố có sức mua lớn và tỷ lệ lợi nhuận tốt đã được xác định trên bản đồ nhiệt (Heatmap) để tối ưu hóa chi phí logistics.
