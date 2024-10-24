SELECT * FROM article ORDER BY designation;

SELECT * FROM article ORDER BY prix DESC;

SELECT * FROM article WHERE designation LIKE 'boulon%' ORDER BY prix;

SELECT * FROM article WHERE designation LIKE '%sachet%';

SELECT * FROM article WHERE designation LIKE '%Sachet%';

SELECT * FROM article, fournisseur WHERE article.ID_FOU = fournisseur.ID ORDER BY nom, prix DESC;

SELECT * FROM article WHERE id_fou = 3;

SELECT nom, AVG(prix) FROM article, fournisseur WHERE article.ID_FOU = fournisseur.ID AND fournisseur.ID = 3 GROUP BY nom;

SELECT nom, AVG(prix) FROM article, fournisseur WHERE article.ID_FOU = fournisseur.ID GROUP BY nom; 

SELECT * FROM bon WHERE date_cmde BETWEEN '2019-03-01' AND '2019-04-05 12:00:00';

SELECT * FROM bon INNER JOIN compo ON bon.ID = compo.ID_BON JOIN article ON compo.ID_ART = article.ID WHERE article.DESIGNATION LIKE '%boulon%';

SELECT * FROM bon INNER JOIN compo ON bon.ID = compo.ID_BON JOIN article ON compo.ID_ART = article.ID JOIN fournisseur ON bon.ID_FOU = fournisseur.ID WHERE article.DESIGNATION LIKE '%boulon%';

SELECT numero, SUM(prix) FROM bon, article, compo WHERE compo.ID_ART = article.ID AND compo.ID_BON = bon.id GROUP BY numero;

SELECT numero, sum(qte) FROM compo, bon WHERE bon.id = compo.ID_BON GROUP BY numero;

SELECT numero, sum(qte) FROM compo, bon WHERE bon.id = compo.ID_BON GROUP BY numero HAVING SUM(qte)>25;

SELECT numero, SUM(prix) FROM bon, article, compo WHERE bon.ID = compo.ID_BON AND article.ID = compo.ID_ART GROUP BY numero;

 