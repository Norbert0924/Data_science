# https://platform.stratascratch.com/coding/10299-finding-updated-records/official-solution?code_type=2

ms_employee_salary.groupby(['id','first_name','last_name','department_id'])['salary'].max().reset_index().sort_values('id')
