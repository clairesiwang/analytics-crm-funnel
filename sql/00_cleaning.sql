-- 00_cleaning.sql (demo)
SELECT
  id,
  DATE(created_at) AS created_day,
  LOWER(TRIM(channel)) AS channel_norm,
  COALESCE(NULLIF(TRIM(source), ''), 'unknown') AS source_norm,
  status
FROM crm_leads;
