with

order_status as (

    select * from {{ ref('ref_order_status') }}

),

orders as (

    select * from {{ ref('stg_orders') }}
    
)

select *
from orders
where status not in (
    select status_code from order_status
)