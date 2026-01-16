

SELECT
    PatientId
    , AdmittedDate
    , DischargeDate
, DATEADD (week, -2, Admitteddate) AS reminderdate
    , Hospital
    , Ward
FROM PatientStay
WHERE Hospital NOT IN ('Kingston' , 'PRUH')
ORDER BY Admitteddate DESC, dischargedate DESC, PatientId DESC

select DATEADD (week, -2, '2024-02-28')

select TOP 5
   Hospital
   ,Ward
   ,COUNT (*) AS NUMPAT
   ,SUM (TARIFF) AS TOTALTARIFF
   , AVG (TARIFF) AS AVTARIFF
   FROM PatientStay
   GROUP BY Hospital, WARD
   ORDER BY TOTALTARIFF DESC

select * from PatientStay ps JOIN DimHospital

Select * FROM PatientStay ps FULL OUTER JOIN DimHospital h ON ps.Hospital = h.Hospital

SELECT
ps.PatientId
,ps.Ethnicity
,--isnull (ps.ethnicity, '-missing') AS Ethisnull2
from PatientStay ps

select
COUNT (*) AS Num1
,COUNT(ps.ethnicity) as Num2
from PatientStay ps


