# https://datalemur.com/questions/python-fizz-buzz-sum

  sum=0
  
  for i in range(target):
    if (i%3==0) or (i%5==0):
      sum=sum+i
  return sum

