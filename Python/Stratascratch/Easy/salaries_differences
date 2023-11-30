# https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=2

import pandas as pd

df1=db_employee
df2=db_dept

df=pd.merge(df1,df2,left_on='department_id', right_on='id', how='left')
difference=df[df['department']=='marketing']['salary'].max()-df[df['department']=='engineering']['salary'].max()

