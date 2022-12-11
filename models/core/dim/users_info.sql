select
    id, firstname, lastname, email
from {{ ref('raw_users_info') }}