with

order_status as (

    select * from {{ ref('ref_order_status') }}
)

select *
from {{ ref('stg_orders') }}
where status not in (
    select status_code from order_status
)