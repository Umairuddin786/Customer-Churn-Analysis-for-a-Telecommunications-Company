# Kpis

# 1. Revenue
select sum(Total_Revenue) as Revenue
from customer_data;

# 2. Charges 
select sum(Total_Charges) as Charges
from customer_data;

# 3. Avg Month Charges
select avg(Monthly_Charge) as Avg_Month_Charges
from customer_data;

# 4. Refunds
select sum(Total_Refunds) as Refunds
from customer_data;

# 5. Extra Data Charges
select sum(Total_Extra_Data_Charges) as Extra_Data_Charges
from customer_data;

# 6. Long Distance Charges
select sum(Total_Long_Distance_Charges) as Long_Distance_Charges
from customer_data;

# Visuals

# Revenue by gender
select gender, sum(Total_Revenue) as Revenue,
sum(Total_Revenue) / ( select sum(Total_Revenue) *100 from customer_data) as Percentage
from customer_data
group by gender;

# Revenue by Martial Status
select married as Martial_Status, sum(total_Revenue) as Revenue,
sum(total_Revenue) /(select sum(total_Revenue) * 100 from customer_data) as Percentage
from customer_data
group by Married;

# Revenue by state
select state, sum(Total_Revenue) as Revenue
from customer_data
group by State
order by Revenue desc
limit 5 ;

# Revenue by Internet Type
select Internet_Type , sum(Total_Revenue) as Revenue
from customer_data
group by Internet_Type
order by revenue desc;

# Revenue by Churn Category
select Churn_category, sum(total_revenue) as Revenue
from customer_data
group by Churn_Category
order by revenue desc;

# Revenue by Payment Type
select Payment_Method, sum(Total_REvenue) as Revenue
from customer_data
group by Payment_Method
order by revenue desc;

# Revenue by Contract
select contract, sum(total_Revenue) as Revenue
from customer_data
group by Contract
order by revenue desc;

# Revenue by Age Group
select
case 
     when age <20 then "<20"
     when age <36 then "20-35"
     when age <51 then "36-50"
     else ">50"
end as Age_Group,
sum(Total_Revenue) as Revenue
from customer_data 
group by age_Group
order by revenue desc;

# Revenue by Tenure Group
select
case 
     when Tenure_in_Months <6  Then "<6 Months"
     when Tenure_in_Months <12 then "6-12 Months"
     when Tenure_in_Months <18 then "12-18 Months"
     when Tenure_in_Months <24 then "12-24 Months"
     else ">24 Months"
     end as Tenure_Group,
sum(total_Revenue) as Revenue
from customer_data
group by Tenure_Group
order by Revenue desc;