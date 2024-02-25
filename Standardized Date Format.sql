RENAME TABLE `nashville housing data for data cleaning` to `nashvillehousing`

-- Test convert SaleDate from written date format to %M %d %Y format
SELECT SaleDate, 
       STR_TO_DATE(SaleDate, '%M %d, %Y') AS FormattedSaleDate
FROM nashvillehousing
WHERE SaleDate IS NOT NULL

-- Update new column
UPDATE nashvillehousing
SET SaleDate = STR_TO_DATE(SaleDate, '%M %d, %Y')

-- Check for success
SELECT SaleDate
FROM nashvillehousing
