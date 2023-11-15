# https://platform.stratascratch.com/coding/9913-order-details?code_type=2

df = pd.merge(customers, orders, left_on = 'id', right_on = 'cust_id',how='left')
df[df["first_name"].isin(["Jill", "Eva"])][["first_name", "order_date", "order_details", "total_order_cost"]]

