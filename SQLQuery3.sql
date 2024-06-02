WITH cte AS (
    SELECT 
		,[FirstName]
		,[LastName]
		,[Age]
		,[Gender] 
        ROW_NUMBER() OVER (
            PARTITION BY 
                FirstName, 
                LastName, 
                Age
				Gender
            ORDER BY 
                FirstName, 
                LastName, 
                Age
				Gender
        ) row_num
     FROM 
        EmployeeDemographic
)
DELETE FROM cte
WHERE row_num > 1;