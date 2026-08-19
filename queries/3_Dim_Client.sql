-- Nettoyage Dim_Customers Table -- 
SELECT 
  c.CustomerKey AS Client_key, 
  -- ,[GeographyKey]
  -- ,[CustomerAlternateKey]
  -- ,[Title]
  c.FirstName AS Prenom, 
  -- ,[MiddleName]
  c.LastName AS Nom, 
  c.FirstName + ' ' + c.LastName AS NomComplet,   -- Concatener le prénom et le nom. 
  -- ,[NameStyle]
  c.BirthDate AS DateNaissance, 
  -- ,[MaritalStatus]
  -- ,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Homme' WHEN 'F' THEN 'Femme' END AS Genre, 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  c.DateFirstPurchase AS DatePremierAchat, 
  -- ,[CommuteDistance]
  g.City AS VilleClient   -- Joindre la ville du client depuis la table Geography 
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordonner la liste par CustomerKey
