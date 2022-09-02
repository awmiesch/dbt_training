select *
from `dbt-tutorial`.`jaffle_shop`.`orders`
where status not in ('placed')