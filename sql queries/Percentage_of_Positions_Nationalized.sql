SELECT
  CASE
    WHEN is_nationalized = TRUE THEN 'Nationalized Position'
    ELSE 'Open to All'
  END AS position_type,
  count(*) AS number_of_positions
FROM
  job_llm_extractions
GROUP BY
  position_type;