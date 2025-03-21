DECLARE @StartTime DATETIME = GETDATE();

WITH RecursiveSubdivisions AS (
    SELECT 
        s.id, 
        s.name, 
        s.parent_id, 
        0 AS sub_level
    FROM subdivisions s
    WHERE s.id = (SELECT subdivision_id FROM collaborators WHERE id = 710253)
    
    UNION ALL
    
    SELECT 
        s.id, 
        s.name, 
        s.parent_id, 
        rs.sub_level + 1
    FROM subdivisions s
    INNER JOIN RecursiveSubdivisions rs ON s.parent_id = rs.id
    WHERE s.id NOT IN (100055, 100059) 
)
SELECT 
    c.id AS id,
    c.name AS name,
    rs.name AS sub_name,
    rs.id AS sub_id,
    rs.sub_level AS sub_level,
    COUNT(*) OVER(PARTITION BY rs.id) AS colls_count,
    CASE 
        WHEN ROW_NUMBER() OVER (ORDER BY rs.sub_level ASC) = 1 
        THEN DATEDIFF(ms, @StartTime, GETDATE())
        ELSE NULL
    END AS execution_time_ms
FROM collaborators c
INNER JOIN RecursiveSubdivisions rs ON c.subdivision_id = rs.id
WHERE c.age < 40
ORDER BY rs.sub_level ASC;
