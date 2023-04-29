-- creates table types that passes in primary key integer value types_id, as well as 
Create table types(types_id integer primary key autoincrement, type1 text, type2 text)

-- Insert type filters type1 and type 2 values
insert into types(type1, type2)   
    select distinct type1, type2
    from temp

-- create table will select all against tables will organize all against values from temp
-- it will then join temp types where it is equal to tyypes from type table
create table against AS 
    select distinct types_id,against_bug,against_dark,against_dragon,against_electric,against_fairy,against_fight,against_fire,
    against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison,against_psychic, against_rock,
    against_steel,against_water
    from temp
        join types on temp.type1 = types.type1
        and temp.type2 = types.type2

--final pokemon table will select distinct of the following values from temp table it will
-- then join types from temp whree types are equal to each other
create table pokemon_final as
    select distinct pokedex_number, types_id, attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, experience_growth, 
    height_m, hp, name, percentage_male, sp_attack, speed, weight_kg, generation, is_legendary
        from temp
        join types on temp.type1 = types.type1
        and temp.type2 = types.type2

--error within the base_egg_steps, repeating value
alter table pokemon_final 
    drop column [base_egg_steps:1]


--dropping unneeded tables 
drop table pokemon


drop table [temp]


drop table split_abilities

drop table stats

drop table pokemon_abilities
