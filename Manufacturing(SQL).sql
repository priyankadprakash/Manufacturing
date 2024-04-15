create database manufacturing;
select * from dataset;

#KPI1
select sum(`Manufactured Qty`) as Total_Manufactured_Qty from dataset;

#KPI2
select sum(`Rejected Qty`) as Total_Rejected_Qty from dataset;

#KPI3
select sum(`Processed Qty`) as Total_Processed_Qty from dataset;

#KPI4
select round(((sum(`Rejected Qty`)/sum(`Processed Qty`))*100),2) as 'Wastage(%)' from dataset; 

#KPI5
select `Emp Name`, sum(`Rejected Qty`) as Total_Rejected_qty from dataset group by `Emp Name` order by Total_Rejected_qty desc;

#KPI6
select `Machine Code`,sum(`Rejected Qty`) as rejected_quantity from dataset group by `Machine Code` order by rejected_quantity desc;

#KPI7
select `Fiscal Date` as date ,sum(`Produced Qty`) as total_produced_quantity from dataset group by  `Fiscal Date` order by `Fiscal Date`;

#KPI8
select sum(`Manufactured Qty`) as Manufactured_Qty, sum(`Rejected Qty`) as rejected_Qty from dataset;

#KPI9
select `Department Name`, sum(`Manufactured Qty`) as Manufactured_Quantity, sum(`Rejected Qty`) as Rejected_Quantity from dataset group by `Department Name`;

#KPI10
select `Operation Name`, sum(`Manufactured Qty`) as manufactured_quantity, sum(`Rejected Qty`) as rejected_quantity from dataset group by `Operation Name`;


