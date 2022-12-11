select 
    u.id user_id, u.username, coalesce(sum(m.mmr_change),0) + 500 as current_mmr
from {{ ref('users') }} u
left join {{ ref('matches') }} m on u.id = m.user_id
group by 1,2