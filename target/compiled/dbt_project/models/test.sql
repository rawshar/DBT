
ALTER TABLE `improvado-388205`.`dbt_rawshar`.`facebook`  ADD COLUMN placement_id INT;
ALTER TABLE `improvado-388205`.`dbt_rawshar`.`facebook` ALTER COLUMN placement_id SET DEFAULT 0;
UPDATE `improvado-388205`.`dbt_rawshar`.`facebook` SET placement_id = 0 WHERE TRUE;

select * from `improvado-388205`.`dbt_rawshar`.`facebook` limit 100;