
/*
   Table Name: record_source
   Data Model Type: Data Vault

   Created Date         Created By              Description
   1/19/2021            Natasha Cain            Initial

*/

{{ config(materialized='table') }}

select 1 as record_source_id,
        'TimeLive' as record_source_name,
         CURRENT_DATETIME() AS record_load_datetime
union all
select 2 as record_source_id,
        'HubSpot' as record_source_name,
         CURRENT_DATETIME() AS record_load_datetime
union all
select 3 as record_source_id,
        'QuickBooks' as record_source_name,
         CURRENT_DATETIME() AS record_load_datetime
union all
select 4 as record_source_id,
        'Paylocity' as record_source_name,
         CURRENT_DATETIME() AS record_load_datetime

