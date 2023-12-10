-- pushed this
{{config(materialized='table')}}


WITH en_sales AS (
    SELECT
        CASE
            WHEN c.name = 'Jane Smith' THEN 2
            ELSE c.id
        END AS customer_id,
        c.name AS customer_name,
        c.age AS customer_age,
        s.id AS sales_id,
        s.sales_amount,
        s.purchase_date,
        e.employee_id,
        e.name AS employee_name,
        e.age AS employee_age,
        e.hire_date,
        e.position,
        p.purchase_id,
        p.product_id,
        p.quantity,
        po.product_name
    FROM
        {{ ref('customers1') }} c
        JOIN {{ ref('sales1') }} s ON c.id = s.customer_id
        JOIN employees e ON s.id = e.sales_id
        JOIN purchases p ON e.sales_id = p.sales_id
        JOIN products po ON p.product_id = po.product_id
)

SELECT * FROM en_sales






