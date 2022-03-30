{%- set yaml_metadata -%}
source_model: 'RAW__Contoso__dbo__Sales'
derived_columns:
  Record_Source: '!Contoso.dbo.Sales'
  Load_Date: "CAST('{{ var('load_date') }}' as datetime2(7))"
  Order__Id: 'SalesOrderNumber'
hashed_columns:
  Sales__Link__Hash_Key:
    - 'ProductKey'
    - 'CustomerKey'
    - 'SalesOrderNumber'
    - 'SalesOrderLineNumber'
  Product__Hash_Key: 'ProductKey'
  Customer__Hash_Key: 'CustomerKey'
  Order__Hash_Key: 'SalesOrderNumber'
  Sales__Link__Hash_Diff:
    is_hashdiff: true
    columns:
      - 'DateKey'
      - 'ProductKey'
      - 'CustomerKey'
      - 'SalesOrderNumber'
      - 'SalesOrderLineNumber'
      - 'SalesQuantity'
      - 'SalesAmount'
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
                