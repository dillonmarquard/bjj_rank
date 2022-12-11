select
    id, name, info, address, cast(event_begin_at as timestamp) event_begin_at, cast(event_end_at as timestamp) event_end_at
from {{ ref('raw_events') }}