with max_runtime(runtime, type) AS (
select max(runtime_minutes), titles.type from titles group by titles.type
)
select titles.type, primary_title, titles.runtime_minutes from titles , max_runtime
where max_runtime.runtime = titles.runtime_minutes and max_runtime.type = titles.type
order by titles.type, titles.primary_title;
