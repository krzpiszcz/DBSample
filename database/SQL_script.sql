
{{
  config(
    materialized = 'table'
    )
}}
{%- set survey = var('email_msl') -%}
{# --- Config Parameters (PARAMETERS) #}
{%- set pTable      = 'dwh_parameters' -%}
{%- set pColumns    = ' PARAM_VALUE_INT, PARAM_VALUE_CHAR ' -%}
{%- set stg_det_rep = 'test_det_rep'-%}

select
     *
    ,to_timestamp_ntz(sysdate()::timestamp) RUN_TIMESTAMP
    ,newfield1
from {{ ref(stg_det_rep) }}
