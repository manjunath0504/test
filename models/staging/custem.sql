with source as (
 
    select * from {{source('PB_BASE','CUST_01') }}
 
), 
 
renamed as (
 
select 
 
    "C_CUSTKEY" as CUST_01,
	"C_NAME" as C_NAME,
	"C_ADDRESS" C_ADDRESS,
	"C_NATIONKEY" as C_NATIONKEY,
	"C_PHONE" as C_PHONE,
	"C_ACCTBAL" as C_ACCTBAL,
	"C_MKTSEGMENT" as C_MKTSEGMENT,
 
from source 
 
) 
 
select * from renamed