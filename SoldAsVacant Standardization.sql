SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM nashvillehousing
GROUP BY SoldAsVacant
ORDER BY 2

SELECT SoldAsVacant, 
		CASE 
				 WHEN SoldAsVacant = 'Y' THEN 'Yes'
				 WHEN SoldAsVacant = 'N' THEN 'No'
				 ELSE SoldAsVacant
		END
FROM nashvillehousing

UPDATE nashvillehousing
SET SoldAsVacant = CASE 
				 WHEN SoldAsVacant = 'Y' THEN 'Yes'
				 WHEN SoldAsVacant = 'N' THEN 'No'
				 ELSE SoldAsVacant
		END
		
		