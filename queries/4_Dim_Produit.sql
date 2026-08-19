SELECT 
  p.ProductKey, 
  p.[ProductAlternateKey] AS ProduitItemCode, 
  -- ,[ProductSubcategoryKey]
  -- ,[WeightUnitMeasureCode]
  -- ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS NomProduit, 
  ps.FrenchProductSubcategoryName, 
  -- Jointure à partir de la table Sub Category 
  ps.FrenchProductSubcategoryName AS [Sub Category], 
  pc.FrenchProductCategoryName AS [Product Category], 
  -- Jointure à partir de la table Category 
  -- ,[SpanishProductName]
  -- ,[FrenchProductName]
  -- ,[StandardCost]
  -- ,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  -- ,[SafetyStockLevel]
  -- ,[ReorderPoint]
  -- ,[ListPrice]
  p.[Size] AS [Product Size], 
  -- ,[SizeRange]
  -- ,[Weight]
  -- ,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  -- ,[DealerPrice]k
  -- ,[Class]
  -- ,[Style]
  p.[ModelName] AS [Product Model Name], 
  -- ,[LargePhoto]
  p.[EnglishDescription], 
  p.[FrenchDescription] AS [Product Description], 
  -- ,[ChineseDescription]
  -- ,[ArabicDescription]
  -- ,[HebrewDescription]
  -- ,[ThaiDescription]
  -- ,[GermanDescription]
  -- ,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  CASE WHEN p.Status = 'Current' THEN 'Actif' WHEN p.Status IS NULL THEN 'Obsolète' ELSE p.Status END AS [Product Status] 
FROM 
  dbo.DimProduct AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey asc
