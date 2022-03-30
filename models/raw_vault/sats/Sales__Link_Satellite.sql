{%- set source_model = "RAW__Contoso__dbo__Sales__Hashed" -%}
{%- set src_pk = "Sales__Link__Hash_Key" -%}
{%- set src_hashdiff = "Sales__Link__Hash_Diff" -%}
{%- set src_payload = ["DateKey", "ProductKey","CustomerKey","SalesOrderNumber","SalesOrderLineNumber","SalesQuantity","SalesAmount"] -%}
{%- set src_ldts = "Load_Date" -%}
{%- set src_source = "Record_Source" -%}

{{ config(is_auto_end_dating=true) }}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
