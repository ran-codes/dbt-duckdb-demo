import pyarrow as pa
import polars as pl

def model(dbt, session):
    dbt.config(materialized = "external")
    mtcars = dbt.source("external_csv", "mtcars")
    
    df_final = (pl.from_arrow(mtcars.arrow())
      .filter(pl.col("gear") > 4)
      .to_pandas())

    return df_final