with
  av(average_rating) as (
    select SUM(rating * votes) / SUM(votes)
      from ratings, titles
       where titles.title_id == ratings.title_id and titles.type == "movie" 
  )
select titles.original_title, (ratings.votes / (ratings.votes + 2500.0)) * ratings.rating + (2500.0/(ratings.votes + 2500.0)) * average_rating as weighted_rating 
from titles, ratings, av
where ratings.title_id == titles.title_id and  titles.type == "movie"
order by weighted_rating desc
limit 250
