{%- set source_model = "RAW__Contoso__dbo__Products__Hashed" -%}
{%- set src_pk = "Product__Hash_Key" -%}
{%- set src_nk = "Product__Id" -%}
{%- set src_ldts = "Load_Date" -%}
{%- set src_source = "Record_Source" -%}

{{ dbtvault.hub(src_pk=src_pk, src_nk=src_nk, src_ldts=src_ldts,
                src_source=src_source, source_model=source_model) }}