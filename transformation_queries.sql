
create table transformed_taxi_dataset as
select *, row_number() over () as id
from "taxi_dataset"."raw_taxi_dataset";

create table transformed_taxi_dataset as
select *
from "taxi_dataset"."transformed_taxi_datset";


select id, fare_amount, tip_amount, max(total_amount) as highest_total_amount
from "taxi_dataset"."transformed_taxi_datset"
group by id, fare_amount, tip_amount
order by highest_total_amount desc
limit 10;

DROP TABLE `taxi_dataset_raw_taxi_dataset`;

SELECT * FROM "taxi_dataset"."transformed_taxi_dataset" 
where passenger_count is null;