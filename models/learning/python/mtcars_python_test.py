import pyarrow as pa
import polars as pl

def model(dbt, session):
    dbt.config(materialized = "external")
    my_sql_model_df = dbt.ref("mtcars")
    
    df_final = (pl.from_arrow(my_sql_model_df.arrow())
      .filter(pl.col("gear") > 4)
      .to_pandas())

    return df_final