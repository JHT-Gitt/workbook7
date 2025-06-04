select * from GTA.Citizens;

SELECT Name, WantedLevel FROM GTA.Citizens;

select Name, Profession from GTA.Citizens;

select * from GTA.Citizens
where Age <25;


select * from GTA.Vehicles
select * from GTA.Citizens
select * from GTA.Missions
select * from GTA.Assignments;
Order by Speed;

select 
c.Name,
count(a.Completed) [Mission Completed is 2 or more ],
sum(m.Reward) [Reward is 4000 or more ]
from GTA.Assignments A
join GTA.Missions M 
on a.MissionID = m.MissionID
join GTA.Citizens C 
on a.CitizenID = c.CitizenID
group by c.Name
having count(a.Completed) >=2 and sum(m.Reward) >= 4000

select 
c.Name, 
a.Completed,
max(a.TimeSpent) [Fastest Completed Time],
min(a.TimeSpent) [Slowest Completed Time]
from GTA.Assignments A
join GTA.Missions M 
on a.MissionID = m.MissionID
join GTA.Citizens C 
on a.CitizenID = c.CitizenID
GROUP by c.Name, a.Completed



select 
c.Name, 
sum(m.Reward) [Total Reward]
from GTA.Assignments A
join GTA.Missions M 
on a.MissionID = m.MissionID
join GTA.Citizens C 
on a.CitizenID = c.CitizenID
GROUP by c.Name
order by sum(m.Reward) DESC



select 
c.Name,
v.Type,
v.Brand
from GTA.Citizens C 
left join GTA.Vehicles V 
on c.CitizenID = v.OwnerID
where v.IsStolen =1


select c.Name, c.Alias, c.WantedLevel  
from GTA.Citizens C
where c.WantedLevel >=2


select 
c.Name,
count(v.OwnerID) [Vehicle Own]
from GTA.Citizens C 
left join GTA.Vehicles V 
on c.CitizenID = v.OwnerID
GROUP BY c.Name
having count(v.OwnerID) > 0

select min(c.WantedLevel)
from GTA.Citizens C



