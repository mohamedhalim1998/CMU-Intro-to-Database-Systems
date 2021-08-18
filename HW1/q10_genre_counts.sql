with ctegenres(genre) as (
select distinct titles.genres from titles
where titles.genres not null
and titles.genres != '\N'
and titles.genres not like '%,%'
)

select count(genre), genre from titles, ctegenres
where titles.genres like ('%'  || ctegenres.genre || '%')
group by genre
