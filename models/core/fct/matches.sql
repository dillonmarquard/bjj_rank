select 
    id, event_id, user_id, opponent_id, is_winner, mmr_change, cast(match_at as timestamp) match_at
from {{ ref('raw_matches') }}