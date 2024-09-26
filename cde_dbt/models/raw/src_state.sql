-- This maps to cityID to tell the states where they are located.

SELECT *
FROM {{ ref("state")}}