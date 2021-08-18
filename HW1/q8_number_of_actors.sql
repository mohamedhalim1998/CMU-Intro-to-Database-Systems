select count(distinct(crew.person_id)) from crew
where (crew.category == 'actor' OR crew.category == "actress") and title_id in ( 
select title_id from crew
where crew.person_id = (
select person_id from people
where people.name = 'Mark Hamill' and people.born = 1951
)
);

