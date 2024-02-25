
-- Count of NULL PropertyAddress'
SELECT COUNT(*) - COUNT(PropertyAddress)
FROM nashvillehousing

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, COALESCE(a.PropertyAddress, b.PropertyAddress)
FROM nashvillehousing a
JOIN nashvillehousing b 
		ON a.ParcelID = b. ParcelID 
		AND a.UniqueID <> b.UniqueID
WHERE a.PropertyAddress is NULL


UPDATE nashvillehousing a
JOIN nashvillehousing b 
		ON a.ParcelID = b. ParcelID 
		AND a.UniqueID <> b.UniqueID
SET a.PropertyAddress = COALESCE(a.PropertyAddress, b.PropertyAddress)
WHERE a.PropertyAddress is NULL



