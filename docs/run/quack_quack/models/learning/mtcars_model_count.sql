create or replace view "main"."mtcars_model_count__dbt_int" as (
        select * from 'results.csv'
    );