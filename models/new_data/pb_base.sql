with source_data as (

select * from {{source(source_name,table_name)}})

final as (select * from source_data)

select * from final