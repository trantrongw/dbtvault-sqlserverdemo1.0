{%- set source_model = "RAW__Contoso__dbo__Products__Hashed" -%}
{%- set src_pk = "Product__Hash_Key" -%}
{%- set src_hashdiff = "Product__Hash_Diff" -%}
{%- set src_payload = ["ProductName", "BrandName"] -%}
{%- set src_ldts = "Load_Date" -%}
{%- set src_source = "Record_Source" -%}

{{ config(is_auto_end_dating=true) }}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=src_eff,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
