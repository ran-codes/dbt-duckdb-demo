create or replace view "main"."mtcars_gear_count__dbt_int" as (
        select * from 'D://git/scr/dbt_external/mtcars_gear_count.parquet'
    );