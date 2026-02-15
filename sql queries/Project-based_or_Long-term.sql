SELECT
  CASE
    WHEN is_project_based = TRUE THEN 'Project-Based'
    ELSE 'Permanent / Ongoing'
  END AS contract_type,
  count(*) AS number_of_positions
FROM
  job_llm_extractions
GROUP BY
  contract_type;