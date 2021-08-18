with decade_titles(premiered, cnt) as (
select (titles.premiered / 10) || '0s' as premiered, count(titles.premiered) as cnt from titles
group by titles.premiered
)


select premiered, round(cast(sum(cnt) * 100 as float)  / (select count(*) from titles), 4) as prec from decade_titles
group by decade_titles.premiered
order by prec

