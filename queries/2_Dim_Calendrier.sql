-- Nettoyage DimDate Table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek], 
  -- [EnglishDayNameOfWeek] AS Day,
  --,[SpanishDayNameOfWeek]
  [FrenchDayNameOfWeek] AS Jour, 
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS WeekNbr, 
  -- [EnglishMonthName] AS Month,
  --,[SpanishMonthName] 
  [FrenchMonthName] AS Mois, 
  CASE MonthNumberOfYear
    WHEN 1 THEN 'Jan'
    WHEN 2 THEN 'Fév'
    WHEN 3 THEN 'Mar'
    WHEN 4 THEN 'Avr'
    WHEN 5 THEN 'Mai'
    WHEN 6 THEN 'Juin'
    WHEN 7 THEN 'Juil'
    WHEN 8 THEN 'Août'
    WHEN 9 THEN 'Sep'
    WHEN 10 THEN 'Oct'
    WHEN 11 THEN 'Nov'
    WHEN 12 THEN 'Déc'
END AS MoisCourt, 
  [MonthNumberOfYear] AS NumeroMois, 
  [CalendarQuarter] AS Trimestre, 
  [CalendarYear] AS Annee 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2025].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2024


