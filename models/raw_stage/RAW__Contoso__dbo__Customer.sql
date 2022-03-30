SELECT *  
FROM  {{ source('Staging', 'Contoso__dbo__Customer') }}