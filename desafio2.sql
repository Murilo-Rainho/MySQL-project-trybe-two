SELECT j.JOB_TITLE Cargo, (CASE
  WHEN j.MAX_SALARY >= 5000 AND j.MAX_SALARY <= 10000 THEN 'Baixo'
  WHEN j.MAX_SALARY > 10000 AND j.MAX_SALARY <= 20000 THEN 'Médio'
  WHEN j.MAX_SALARY > 20000 AND j.MAX_SALARY <= 30000 THEN 'Alto'
  ELSE 'Altíssimo'
END
) `Nível` FROM hr.jobs j
ORDER BY j.JOB_TITLE;
