-- 1. Tìm ngày mua hàng đầu tiên của mỗi khách hàng
WITH Customer_First_Purchase AS (
    SELECT 
        CustomerName,
        MIN(CAST([Order_Date] AS DATE)) AS FirstDate
    FROM dbo.Orders
    GROUP BY CustomerName
),

-- 2. Gom nhóm khách hàng vào tháng Cohort và tính chỉ số tháng (Month Index)
Cohort_Logic AS (
    SELECT 
        o.CustomerName,
        -- Đưa về ngày đầu tháng của tháng gia nhập
        DATEFROMPARTS(YEAR(c.FirstDate), MONTH(c.FirstDate), 1) AS CohortMonth,
        -- Tính khoảng cách tháng giữa đơn hàng hiện tại và đơn hàng đầu tiên
        DATEDIFF(MONTH, c.FirstDate, CAST(o.[Order_Date] AS DATE)) AS MonthIndex
    FROM dbo.Orders o
    JOIN Customer_First_Purchase c ON o.CustomerName = c.CustomerName
),

-- 3. Đếm số lượng khách hàng duy nhất tham gia mua sắm ở mỗi mốc thời gian
Retention_Counts AS (
    SELECT 
        CohortMonth,
        MonthIndex,
        COUNT(DISTINCT CustomerName) AS ActiveCustomers
    FROM Cohort_Logic
    GROUP BY CohortMonth, MonthIndex
)

-- 4. Tính toán tỷ lệ Retention %
SELECT 
    CohortMonth,
    MonthIndex,
    ActiveCustomers,
    -- Lấy số lượng khách hàng ở Month 0 làm mốc (Cohort Size)
    FIRST_VALUE(ActiveCustomers) OVER (
        PARTITION BY CohortMonth 
        ORDER BY MonthIndex
    ) AS CohortSize,
    -- Tính tỷ lệ phần trăm
    CAST(ActiveCustomers * 100.0 / 
        FIRST_VALUE(ActiveCustomers) OVER (
            PARTITION BY CohortMonth 
            ORDER BY MonthIndex
        ) AS DECIMAL(10, 2)) AS RetentionRate
FROM Retention_Counts
ORDER BY CohortMonth, MonthIndex;