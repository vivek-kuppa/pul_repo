-- pushed this
{{config(materialized='table')}}
        
   with en_sales as(     
        SELECT
        c.id AS customer_id,
        c.name AS customer_name,
        c.age AS customer_age,
        s.id AS sales_id,
        s.sales_amount,
        s.purchase_date,
        e.employee_id,  -- Corrected alias to use 'employee_id'
        e.name AS employee_name,
        e.age AS employee_age,
        e.hire_date,
        e.position,
        p.purchase_id,
        p.product_id,
        p.quantity,
        po.product_name
        FROM
        customers c
        JOIN
        sales s ON c.id = s.customer_id
        JOIN
        employees e ON s.id = e.sales_id
        JOIN
        purchases p ON e.sales_id = p.sales_id
        JOIN
        products po ON p.product_id = po.product_id
        )

select * from en_sales





