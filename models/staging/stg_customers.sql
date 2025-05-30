with source as (
    select * from {{ source('tpch','customer') }}
    
    /*snowflake_sample_data.tpch_sf1.customer */ 
    
),
cleanup as (
    select 
        c_custkey as customer_key,
        c_name as name,
        c_address as address,
        c_nationkey as nation_key,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as c_comment
    from source
)
select * from cleanup