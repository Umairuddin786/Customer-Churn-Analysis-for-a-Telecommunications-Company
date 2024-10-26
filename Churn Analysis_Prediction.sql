# Count of Predicted Churners
select count(customer_id) as Count_Of_Prdicted_Churners
from customer_churn_predictions;

# Male Churners
select count(Customer_id) as Male_Churners
from customer_churn_predictions
where Gender = "Male";

# Female Churners
select count(customer_id) as Female_Churners
from customer_churn_predictions
where gender = "Female";

# Churners by state
select state, count(customer_id) as Churners
from customer_churn_predictions
group by state
order by churners desc;

# Churnere by Martial Status
select married as Martial_Status, count(customer_id) as Churners
from customer_churn_predictions
group by Martial_Status
order by churners desc;

# Churners by Payment method
select Payment_Method, count(customer_id) as Churners
from customer_churn_predictions
group by Payment_Method
order by churners desc;

# Churners by Contract
select contract, count(customer_id) as Churners
from customer_churn_predictions
group by Contract
order by churners desc;

# Churners by Age Group
select
    case
		when age <20 then "<20"
        when age <36 then "20-35"
        when age <51 then "36-50"
        else ">50"
	end as Age_Group,
count(customer_id) as Churners
from customer_churn_predictions
group by age_group
order by churners desc;

# Churners by Tenure Group
select 
 case
	 when Tenure_in_Months <6 then "<6 Months"
     when Tenure_in_Months <12 then "6-12 Months"
     when Tenure_in_Months <18 then "12-18 Months"
     when Tenure_in_Months <24 then "18-24 Months"
     else ">24 Months"
end as Tenure_Group,
count(Customer_ID) as Churners
from customer_churn_predictions
group by Tenure_Group
order by churners desc;

select Customer_ID, 
sum(Monthly_Charge) as Monthly_Charges,
sum(total_Revenue) as Revenue,
sum(total_refunds) as Refunds,
sum(Number_of_Referrals) as Number_Of_Referrals
from customer_churn_predictions
group by Customer_ID;