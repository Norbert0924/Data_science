# https://platform.stratascratch.com/coding/10061-popularity-of-hack/solutions?code_type=2

merged = pd.merge(facebook_employees,facebook_hack_survey, left_on = 'id', right_on = 'employee_id', how = 'left')
result = merged.groupby('location')['popularity'].mean().reset_index()
