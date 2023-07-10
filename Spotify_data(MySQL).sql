create database	spotify;
select * from spotify;
use spotify;

-- age distribution of active users by their age segment?
Select age, count(*) as age_distribution
from spotify
group by age;


-- gender that uses more spotify?
Select gender, count(*) as gender_distribution
from spotify
group by gender;


-- who has more paid subsciption plan?
Select spotify_subscription_plan, gender, count(gender) as subscription_status
from spotify
where spotify_subscription_plan = 'Premium (paid subscription)'
 or spotify_subscription_plan = 'Free (ad-supported)'
group by spotify_subscription_plan, gender
order by spotify_subscription_plan, gender;


-- which age group has willing to buy premium subscription more?
Select age, count(*), premium_sub_willingness
from spotify
where premium_sub_willingness = 'Yes' and age = '20-35'
-- or premium_sub_willingness =  'No'
group by age, premium_sub_willingness;
-- order by premium_sub_willingness asc;



-- what is the most perferred music genre?
Select fav_music_genre , count(*) as most_listened_genre
from spotify
group by fav_music_genre
order by count(*) desc;


-- what is the preferred listening content songs or pods?
Select preferred_listening_content, count(*) as perferred_content
from spotify
group by preferred_listening_content
order by count(*) desc;


-- what is the recommended music ratings?
Select music_recc_rating, count(*) , age
from spotify
where age = '20-35'
--   or age = '12-20' 
--   or age = '35-60'
group by music_recc_rating, age
order by count(*)  desc;


-- what is the pod satisfation rate?
Select pod_variety_satisfaction, count(*)
from spotify
group by pod_variety_satisfaction
order by count(*);


--


-- 




