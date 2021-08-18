select type, count(type) as cnt from titles
group by type
order by cnt

