{%- set source_model = "RAW__Contoso__dbo__Sales__Hashed" -%}
{%- set src_pk = "Sales__Link__Hash_Key" -%}
{%- set src_fk = ["Order__Hash_Key", "Product__Hash_Key","Customer__Hash_Key"] -%}
{%- set src_ldts = "Load_Date" -%}
{%- set src_source = "Record_Source" -%}

{{ dbtvault.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                 src_source=src_source, source_model=source_model) }}
