# https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains/solutions?code_type=1

select employeename, basepay
from sf_public_salaries
where jobtitle like '%POLICE%'
