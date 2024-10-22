compta2SELECT * FROM article;

SELECT ref, designation FROM article WHERE prix > 2;

SELECT * FROM article WHERE prix >= 2 and prix <= 6.25; 

SELECT * FROM article WHERE prix BETWEEN 2 AND 6.25;

SELECT * FROM article WHERE prix < 2 AND prix >6.25 AND id_fou = 1;

SELECT * FROM article WHERE id_fou != 2;

SELECT * FROM article WHERE id_fou IN (1, 3);

SELECT * FROM article WHERE id_fou not IN (1, 3);

SELECT * FROM bon WHERE date_cmde BETWEEN '2019-02-01' AND '2019-04-30';
