SELECT DATE('now'); /*2026-04-22*/

SELECT DATE('now', '-10 days'); /*2026-04-12*/

SELECT julianday('now') - julianday('2023-04-01');

SELECT julianday('2023-04-10') - julianday('2023-04-01'); /*9*/