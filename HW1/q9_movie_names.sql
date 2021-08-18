select titles.primary_title from titles
where title_id in ( 
select title_id from crew
where crew.person_id = (
select person_id from people
where people.name = 'Mark Hamill' and people.born = 1951
))
and title_id in (select title_id from crew
where crew.person_id = (
select person_id from people
where people.name = 'George Lucas' and people.born = 1944
));

