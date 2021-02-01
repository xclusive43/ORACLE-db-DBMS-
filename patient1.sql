SELECT * FROM patient;
SELECT * FROM treatment;
SELECT * FROM patient_treatment;

SELECT count(*) from patient;

select MIN(treatment_cost) from treatment;
select max(treatment_cost) from treatment;

update treatment
set treatment_cost= treatment_cost+(treatment_cost*0.01)
where treatment_cost<1000;





