--update statment that trims value that equals [
update temp
    set split_value= trim(split_value, '[')

--update statment that trims value that equals ]    
update temp
    set split_value= trim(split_value, ']')

--update statment that trims value that equals [
update temp
    set split_value= trim(split_value, "'")

-- create tables table that has primary key integer value for abilities_id, as well as a name text
Create table abilities(abilities_id integer primary key autoincrement, name text)

-- insert value makes sure that there are repeating values amongst split_values
insert into abilities(name)
    select distinct split_value
    from temp

-- creates a linked table from temp,selecting abilities_id as well as pokedex
-- it then combines the abilities with temp.split_value if it is equal to ablities name
create table linked_table AS 
    select distinct abilities_id, pokedex_number
        from temp
        join abilities on temp.split_value= abilities.name
        



