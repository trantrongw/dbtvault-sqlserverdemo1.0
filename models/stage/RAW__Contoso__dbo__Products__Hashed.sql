{%- set yaml_metadata -%}
source_model: 'RAW__Contoso__dbo__Products'
derived_columns:
  Record_Source: '!Contoso.dbo.Products'
  Load_Date: "CAST('{{ var('load_date') }}' as datetime2(7))"
  Product__Id: 'ProductKey'
hashed_columns:
  Product__Hash_Key: 'ProductKey'
  Product__Hash_Diff:
    is_hashdiff: true
    columns:
      - 'ProductKey'
      - 'ProductName'
      - 'BrandName'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}
{% set source_model = metadata_dict['source_model'] %}
{% set derived_columns = metadata_dict['derived_columns'] %}
{% set hashed_columns = metadata_dict['hashed_columns'] %}

{{ dbtvault.stage(include_source_columns=true,
                  source_model=source_model,
                  derived_columns=derived_columns,
                  hashed_columns=hashed_columns,
                  ranked_columns=none) }}