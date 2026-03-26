/*
INSTR searches for a substring inside another string and returns the position where it first appears.
This checks each descricao and returns where 'abc' starts.

Returns 1 if it starts at first character
Returns >1 if found later
Returns 0 if not found (in most DBs, like MySQL/Oracle-style behavior)

EXAMPLES:
SELECT INSTR('banana', 'na');   -- 3 (first "na" starts at char 3)
SELECT INSTR('banana', 'x');    -- 0 (not found)
SELECT INSTR('abcdef', 'abc');  -- 1
SELECT INSTR('abcdef', 'def');  -- 4


Practical use: This returns rows where descricao contains 'promo'.
SELECT * FROM tabela WHERE INSTR(descricao, 'promo') > 0;

*/
SELECT INSTR(descricao, 'abc') FROM tabela;