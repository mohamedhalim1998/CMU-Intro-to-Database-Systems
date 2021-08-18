with akas_count(title_id, cnt) as (
select title_id, count(title_id) as cnt from akas
group by akas.title_id
order by cnt desc
limit 10
)
select titles.primary_title, cnt from titles, akas_count
where titles.title_id = akas_count.title_id

