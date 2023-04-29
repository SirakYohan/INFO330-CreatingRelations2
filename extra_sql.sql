-- extra credit assignemnt- finds if mascot is in type one or type 2
-- if not, then it insets husky, same with cougar
Select *
from types
Where type1 = "Mascot" or type2 = "Mascot"

Select attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, 
experience_growth, height_m, hp, name, percentage_male, sp_attack, speed, weight_kg, generation, is_legendary 
from pokemon_final WHERE name = 'Mew'

insert into pokemon_final(pokedex_number, types_id, attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, 
experience_growth, height_m, hp, name, percentage_male, sp_attack, speed, weight_kg, generation, is_legendary)
    values(802, (Select types_id From types WHERE type1 = 'Mascot'), 100, 30720, 100, 600, 45, 'New Species Pokemon', 100, 1059860, .4, 100, 'Huskichu', null,
    100, 100, 4.0, 1, 1)
    

insert into pokemon_final(pokedex_number, types_id, attack, base_egg_steps, base_happiness, base_total, capture_rate, classfication, defense, 
experience_growth, height_m, hp, name, percentage_male, sp_attack, speed, weight_kg, generation, is_legendary)
    values(802, (Select types_id From types WHERE type1 = 'Mascot'), 0, 30720, 100, 600, 45, 'New Species Pokemon', 100, 1059860, .4, 100, 'Cougarite', null,
    100, 100, 4.0, 1, 1)
