select
    order_id,
    total_amount
from {{ ref('stg_stripe__payments') }}
where total_amount < 0