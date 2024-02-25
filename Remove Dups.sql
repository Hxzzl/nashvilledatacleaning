WITH RowNumCTE AS (
	SELECT *,
		ROW_NUMBER() OVER (
			PARTITION BY ParcelID,
									 PropertyAddress,
									 SalePrice,
									 SaleDate,
									 LegalReference
			ORDER BY UniqueID
		) AS row_num
	FROM nashvillehousing
)
DELETE n
FROM nashvillehousing n
JOIN RowNumCTE r ON n.UniqueID = r.UniqueID
WHERE r.row_num = 2;
		
