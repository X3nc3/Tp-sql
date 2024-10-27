SET sql_safe_updates = 0;

UPDATE article SET designation = upper(designation) WHERE prix > 10;

UPDATE article SET designation = lower(designation) WHERE id = 2;

UPDATE article SET prix = prix + (prix * 10 / 100) WHERE id_fou = 2;