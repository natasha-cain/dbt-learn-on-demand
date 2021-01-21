
/*
   Table Name: employee_hub
   Data Model Type: Data Vault

   Created Date         Created By              Description
   1/19/2021            Natasha Cain            Initial

*/

{{ config(materialized='table') }}

with source_data as (
    select
        MD5(CAST(e.AccountEmployeeId AS STRING)) AS employee_pk,
        CURRENT_DATETIME() AS record_load_datetime,
        '1' as record_source_id, --Timelive
        e.AccountEmployeeId AS employee_id
    from `timelive_raw.employees` e
)
select *
from source_data

