-- created a new table split ablities where we replace multiple values in one columns
-- useding json for loop that will replace if finds comma
CREATE TABLE split_abilities AS
SELECT abilities, 
       trim(value) AS split_value
FROM pokemon, 
     json_each('["' || replace(abilities, ',', '","') || '"]')
WHERE split_value <> '';

-- this create statemnt temporary statment that we will join pokemon where
-- split abilities is equal to pokemon abilities
Create Table temp AS
    Select *
    From split_abilities
    join pokemon ON split_abilities.abilities= pokemon.abilities

--dropped abilities table
alter table temp
DROP abilities

-- dropped abbilited in temp due to error
alter table temp
DROP [abilities:1]
