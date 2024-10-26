create database if not exists Telecom_Churn;
select gender ,count(gender),
count(gender) /  (select count(*) from customer_Data)*100as percentage
from customer_data
group by gender
order by percentage desc;

select contract, count(Contract),
count(contract) / (Select count(*) from Customer_Data)*100 as Percentage
from customer_data
group by contract
order by percentage desc;

select Customer_Status , count(Customer_Status) as Total_Count,
sum(Total_Revenue) as Total_Revenue,
sum(Total_Revenue) / (Select sum(Total_Revenue) from customer_Data)*100 as Percentage
from customer_data
group by Customer_Status
order by percentage desc;

select internet_service, count(internet_Service) as Customer,
sum(Total_Revenue) as Total_Revenue
from customer_data
group by Internet_Service
order by Total_Revenue desc;

select state, count(state),
count(state) / (Select count(*) from customer_Data ) *100 as Percentage
from customer_data
group by state
order by percentage;

SET SQL_SAFE_UPDATES = 0;
UPDATE customer_data
SET
    Gender = CASE WHEN TRIM(Gender) = '' THEN NULL ELSE Gender END,
    Age = CASE WHEN TRIM(Age) = '' THEN NULL ELSE Age END,
    Married = CASE WHEN TRIM(Married) = '' THEN NULL ELSE Married END,
    State = CASE WHEN TRIM(State) = '' THEN NULL ELSE State END,
    Number_of_Referrals = CASE WHEN TRIM(Number_of_Referrals) = '' THEN NULL ELSE Number_of_Referrals END,
    Tenure_in_Months = CASE WHEN TRIM(Tenure_in_Months) = '' THEN NULL ELSE Tenure_in_Months END,
    Value_Deal = CASE WHEN TRIM(Value_Deal) = '' THEN NULL ELSE Value_Deal END,
    Phone_Service = CASE WHEN TRIM(Phone_Service) = '' THEN NULL ELSE Phone_Service END,
    Multiple_Lines = CASE WHEN TRIM(Multiple_Lines) = '' THEN NULL ELSE Multiple_Lines END,
    Internet_Service = CASE WHEN TRIM(Internet_Service) = '' THEN NULL ELSE Internet_Service END,
    Internet_Type = CASE WHEN TRIM(Internet_Type) = '' THEN NULL ELSE Internet_Type END,
    Online_Security = CASE WHEN TRIM(Online_Security) = '' THEN NULL ELSE Online_Security END,
    Online_Backup = CASE WHEN TRIM(Online_Backup) = '' THEN NULL ELSE Online_Backup END,
    Device_Protection_Plan = CASE WHEN TRIM(Device_Protection_Plan) = '' THEN NULL ELSE Device_Protection_Plan END,
    Premium_Support = CASE WHEN TRIM(Premium_Support) = '' THEN NULL ELSE Premium_Support END,
    Streaming_TV = CASE WHEN TRIM(Streaming_TV) = '' THEN NULL ELSE Streaming_TV END,
    Streaming_Movies = CASE WHEN TRIM(Streaming_Movies) = '' THEN NULL ELSE Streaming_Movies END,
    Streaming_Music = CASE WHEN TRIM(Streaming_Music) = '' THEN NULL ELSE Streaming_Music END,
    Unlimited_Data = CASE WHEN TRIM(Unlimited_Data) = '' THEN NULL ELSE Unlimited_Data END,
    Contract = CASE WHEN TRIM(Contract) = '' THEN NULL ELSE Contract END,
    Paperless_Billing = CASE WHEN TRIM(Paperless_Billing) = '' THEN NULL ELSE Paperless_Billing END,
    Payment_Method = CASE WHEN TRIM(Payment_Method) = '' THEN NULL ELSE Payment_Method END,
    Monthly_Charge = CASE WHEN TRIM(Monthly_Charge) = '' THEN NULL ELSE Monthly_Charge END,
    Total_Charges = CASE WHEN TRIM(Total_Charges) = '' THEN NULL ELSE Total_Charges END,
    Total_Refunds = CASE WHEN TRIM(Total_Refunds) = '' THEN NULL ELSE Total_Refunds END,
    Total_Extra_Data_Charges = CASE WHEN TRIM(Total_Extra_Data_Charges) = '' THEN NULL ELSE Total_Extra_Data_Charges END,
    Total_Long_Distance_Charges = CASE WHEN TRIM(Total_Long_Distance_Charges) = '' THEN NULL ELSE Total_Long_Distance_Charges END,
    Total_Revenue = CASE WHEN TRIM(Total_Revenue) = '' THEN NULL ELSE Total_Revenue END,
    Customer_Status = CASE WHEN TRIM(Customer_Status) = '' THEN NULL ELSE Customer_Status END,
    Churn_Category = CASE WHEN TRIM(Churn_Category) = '' THEN NULL ELSE Churn_Category END,
    Churn_Reason = CASE WHEN TRIM(Churn_Reason) = '' THEN NULL ELSE Churn_Reason END;


# Data Exloration
select
sum(case when Customer_ID is null then  1 else 0 end) as Customer_id_NullCount,
sum(case when gender is null then 1 else 0 end) as Gender_NullCount,
sum(case when age is null then 1 else 0 end)as Age_NullCount,
sum(case when Married is null then 1 else 0 end) as Married_NullCount,
sum(case when state is null then 1 else 0 end) as State_NulllCount,
   SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count

from customer_data;

CREATE TABLE churn_data (
    Customer_ID varchar(50) primary key,
    Gender VARCHAR(50),
    Age TINYINT,
    Married VARCHAR(50),
    State VARCHAR(50),
    Number_of_Referrals TINYINT,
    Tenure_in_Months TINYINT,
    Value_Deal VARCHAR(50),
    Phone_Service VARCHAR(50),
    Multiple_Lines VARCHAR(50),
    Internet_Service VARCHAR(50),
    Internet_Type VARCHAR(50),
    Online_Security VARCHAR(50),
    Online_Backup VARCHAR(50),
    Device_Protection_Plan VARCHAR(50),
    Premium_Support VARCHAR(50),
    Streaming_TV VARCHAR(50),
    Streaming_Movies VARCHAR(50),
    Streaming_Music VARCHAR(50),
    Unlimited_Data VARCHAR(50),
    Contract VARCHAR(50),
    Paperless_Billing VARCHAR(50),
    Payment_Method VARCHAR(50),
    Monthly_Charge float,
    Total_Charges float,
    Total_Refunds float,
    Total_Extra_Data_Charges int,
    Total_Long_Distance_Charges float,
    Total_Revenue float,
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(50),
    Churn_Reason VARCHAR(50)
);
INSERT INTO Churn_data(
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Phone_Service,
    Multiple_Lines,
    Internet_Service,
    Internet_Type,
    Online_Security,
    Online_Backup,
    Device_Protection_Plan,
    Premium_Support,
    Streaming_TV,
    Streaming_Movies,
    Streaming_Music,
    Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason
)
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    IFNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    IFNULL(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    IFNULL(Internet_Type, 'None') AS Internet_Type,
    IFNULL(Online_Security, 'No') AS Online_Security,
    IFNULL(Online_Backup, 'No') AS Online_Backup,
    IFNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    IFNULL(Premium_Support, 'No') AS Premium_Support,
    IFNULL(Streaming_TV, 'No') AS Streaming_TV,
    IFNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    IFNULL(Streaming_Music, 'No') AS Streaming_Music,
    IFNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    IFNULL(Churn_Category, 'Others') AS Churn_Category,
    IFNULL(Churn_Reason, 'Others') AS Churn_Reason
FROM customer_data;
create view Vw_ChrunData as
  select * from churn_Data where Customer_Status in('churned','Stayed');
  create view Vw_JoinedData as
   select * from churn_Data where Customer_Status = 'Joined';
   
   select customer_Status, count(customer_Status) as total_count
from churn_data
where Customer_Status = 'Churned'
group by Customer_Status;
  
