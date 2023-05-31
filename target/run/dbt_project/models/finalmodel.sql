

  create or replace view `improvado-388205`.`dbt_rawshar`.`finalmodel`
  OPTIONS()
  as with facebook as(
    select * from `improvado-388205`.`dbt_rawshar`.`facebook`
)
select * from facebook;

