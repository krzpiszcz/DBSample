
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

{%- set surveyname  = get_data_filtered(pTable,pColumns,surveys_filter)[0][0] -%}
{%- set countries = get_data_filtered(pTable,pColumns,countries_filter) -%}

for CHG_3
select
     *
    ,to_timestamp_ntz(sysdate()::timestamp) RUN_TIMESTAMP
    ,newfield1
from {{ ref(stg_det_rep) }}

UNION ALL

select * from tabletest

change for chg_1
2. change for chg_1

1. change for chg_2