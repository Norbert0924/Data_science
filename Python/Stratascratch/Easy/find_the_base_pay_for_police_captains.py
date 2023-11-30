# https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=2

sf_public_salaries[sf_public_salaries['jobtitle'].str.contains('CAPTAIN')][['employeename','basepay']]
