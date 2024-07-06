select *
from Student
where StudentName like 'h%';

select *
from Class
where StartDate > str_to_date('01/12/2024', 'dd/mm/yyyy')

select *
from Subject
where Credit between 3 and 5;

update Student
set ClassId = 2
where StudentName = 'Hung';

select st.StudentName, su.SubName, m.Mark
from Student st
         join Mark m on st.StudentId = m.StudentId
         join Subject su on su.SubId = m.SubId
order by m.Mark desc, StudentName;