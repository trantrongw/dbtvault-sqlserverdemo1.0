{%- set source_model = "RAW__Contoso__dbo__Customer__Hashed" -%}
{%- set src_pk = "Customer__Hash_Key" -%}
{%- set src_nk = "Customer__Id" -%}
{%- set src_ldts = "Load_Date" -%}
{%- set src_source = "Record_Source" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}