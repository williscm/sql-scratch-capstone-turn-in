
Codecademy
Learning SQL from Scratch

August 27, 2018

C Michelle Willis

Funnels with Warby Parker


Select *
From survey
Limit 10;


Select question,
Count(distinct response)
From survey
Group by question;


Select *
From quiz
Limit 5;


Select *
From home_try_on
Limit 5;


Select *
From purchase
Limit 5;


SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
LIMIT 10;
