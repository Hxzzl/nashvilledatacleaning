SELECT SUBSTRING_INDEX(PropertyAddress,',',1) as StreetAddress, SUBSTRING_INDEX(PropertyAddress,',',-1) as Neighborhood
FROM nashvillehousing

ALTER TABLE nashvillehousing
ADD COLUMN StreetAddress VARCHAR(50),
ADD COLUMN Neighborhood VARCHAR(35)

UPDATE nashvillehousing
SET StreetAddress = SUBSTRING_INDEX(PropertyAddress,',',1)

UPDATE nashvillehousing
SET Neighborhood = SUBSTRING_INDEX(PropertyAddress,',',-1)

SELECT StreetAddress, Neighborhood
FROM nashvillehousing

SELECT SUBSTRING_INDEX(OwnerAddress,',',1) as OwnerStreetAddress, SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress,',',2),',',-1) as OwnerNeighborhood, 
		SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress,',',3),',',-1) as OwnerState
FROM nashvillehousing

ALTER TABLE nashvillehousing
ADD COLUMN OwnerStreetAddress VARCHAR(50),
ADD COLUMN OwnerNeighborhood VARCHAR(35),
ADD COLUMN OwnerState VARCHAR(3)

UPDATE nashvillehousing
SET OwnerStreetAddress = SUBSTRING_INDEX(OwnerAddress,',',1)

UPDATE nashvillehousing
SET OwnerNeighborhood = SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress,',',2),',',-1)

UPDATE nashvillehousing
SET OwnerState = SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress,',',3),',',-1)


