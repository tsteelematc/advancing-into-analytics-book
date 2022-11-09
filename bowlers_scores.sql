with avgscores as (
    select avg(rawscore) from bowlingleagueexample.bowler_scores group by bowlerid
)

--select * from avgscores;

-- Binning in SQL with count() and case
select 
    case
        when avg > 200 then '200'
        when avg > 190 then '190'
        when avg > 180 then '180'
        when avg > 170 then '170'
        when avg > 160 then '160'
        when avg > 150 then '150'
        when avg > 140 then '140'
        when avg > 130 then '130'
        when avg > 120 then '120'
        when avg > 110 then '110'
        when avg > 100 then '100'
        else 'hmm'
    end
    , count(*) 
from 
    avgscores
group by 
    case
        when avg > 200 then '200'
        when avg > 190 then '190'
        when avg > 180 then '180'
        when avg > 170 then '170'
        when avg > 160 then '160'
        when avg > 150 then '150'
        when avg > 140 then '140'
        when avg > 130 then '130'
        when avg > 120 then '120'
        when avg > 110 then '110'
        when avg > 100 then '100'
        else 'hmm'
    end
order by 
    1
;


