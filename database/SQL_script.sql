
{{
  config(
    materialized = 'table'
    )
}}
{%- set survey = var('email_msl') -%}
{%- set stg_det_rep = 'test_det_rep'-%}

select
     *
    ,to_timestamp_ntz(sysdate()::timestamp) RUN_TIMESTAMP
from {{ ref(stg_det_rep) }}
