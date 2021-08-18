with decade_titles(premiered, cnt) as (
select (titles.premiered / 10) || '0s' as premiered, count(titles.premiered) as cnt from titles
where (titles.premiered is not null)
group by titles.premiered
)
select premiered, sum(cnt) as cnt from decade_titles 
group by decade_titles.premiered
order by cnt desc
