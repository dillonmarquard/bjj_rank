select
    id, username, created_at
from {{ ref('raw_users') }}