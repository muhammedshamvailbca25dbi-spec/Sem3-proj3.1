# IPL Match Analysis

## Project Title
**IPL Match Analysis – What Actually Decides an IPL Match?**

## Business Question
**What actually decides the outcome of an IPL match, and what does this mean for how a franchise should build and manage its team?**

This project analyses IPL match, ball-by-ball, player, team, and venue data to identify the key factors that influence match outcomes and help franchises make better data-driven decisions.

## Dataset

The project uses five main tables:

| Table | What it contains | Source |
|---|---|---|
| `matches.csv` | Match-level information such as teams, toss, winner, venue, result, and player of the match | IPL match dataset |
| `deliveries.csv` | Ball-by-ball information including runs, wickets, extras, batsmen, bowlers, innings, and teams | IPL ball-by-ball dataset |
| `players.csv` | Player information including batting style, bowling style, field position, and player names | IPL player dataset |
| `teams.csv` | Team IDs and team names | IPL team dataset |
| `venues.csv` | Venue IDs, venue names, and cities | IPL venue dataset |

### Table Relationships

- `matches.csv` → `deliveries.csv` using `match_id`
- `matches.csv` → `players.csv` using player IDs where applicable
- `matches.csv` → `teams.csv` using team IDs
- `matches.csv` → `venues.csv` through venue information
- `deliveries.csv` → `teams.csv` using `batting_team_id` and `bowling_team_id`
- `deliveries.csv` → `players.csv` using player information such as batter and bowler

## Dataset Source

The datasets contain historical **Indian Premier League (IPL)** match data, including match-level and ball-by-ball records.

## Analysis
