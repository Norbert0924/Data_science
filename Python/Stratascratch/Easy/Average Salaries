# https://platform.stratascratch.com/coding/9917-average-salaries?code_type=2

df = employee
df['avg_salary'] = df.groupby('department')['salary'].transform('mean')
df[['department','first_name','salary','avg_salary']]
