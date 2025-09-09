# NFL-Slow-Starts-Week-1-Fantasy-Football-performance
Conducted analysis in SQL to surface insights on fantasy football trends across Week 1 performances over the last 12 seasons. Cleaned and analyzed weekly and yearly player statistics in SQL, focusing on scoring patterns by player tiers. Built a Power BI dashboard to visualize trends across positions and tiers.
# Fantasy Football SQL Analysis
Week 1 Fantasy PPR Points compared to Season Averages (2012-2024)

##  Project Overview
**Just a slow start, or time to panic?**

As a fantasy football player with a few years under my belt now, I noticed a familiar pattern after Week 1: many managers panic when their star players underperform, especially early in the season. Some immediately consider dropping or trading key players, while others remain calm, trusting that early-season anomalies tend to balance out over time. I wanted to see which perspective holds true.

To answer this, I conducted an in-depth SQL analysis of fantasy football Week 1 performance trends across the last 12 seasons (over 3000 players), using both weekly and yearly player statistics. I used the [NFL Stats 1999–2022 dataset](https://www.kaggle.com/datasets/philiphyde1/nfl-stats-1999-2022) (CSV files) to create a SQL database of weekly and yearly player statistics. After cleaning and structuring the dataset, I built a Power BI dashboard to visualize scoring patterns across positions and tiers, allowing for deeper comparison between early-season and season-long performance.
I examined how top-tier players, rookies, veterans, and different positions performed relative to their season averages. The goal was to determine whether Week 1 performances are predictive of the season or if early struggles are normal, helping fantasy managers make data-informed decisions about whether to react immediately or stay patient.

 The analysis revealed that top 36 fantasy players scored an average of –0.78 points fewer in Week 1 compared to their season average, while the broader top 128 players only saw a –0.26 point differential. This suggests that elite players tend to take longer to reach peak production, offering strategic insights for fantasy football managers when evaluating draft choices and early-season roster moves. Moreover, less experienced players were likely to score below their season average in week 1.


---

##  Key Insights

- Top 36 fantasy players averaged **–0.78 points fewer** in Week 1 compared to their season average, while the broader top 128 players had only a **–0.26 point differential**
-   This trend is volatile with a slight negative trend. 2023 and 2024 saw point differentials of **-4.34** and **-3.19** respectively. I suspect this is a result of less emphasis on the pre-season as players try to manage their workload (especially with the NFL extending the season up from 16 to 17 games in 2021), resulting in more early-season rust. This is especially true for 'star' players that teams will try to manage more often early in the season.
![NFLTop36](https://github.com/user-attachments/assets/6f08387a-dd99-4b62-a937-39da829bd3b1)

- **Experience Matters:** Rookies (0–1 yrs NFL experience) averaged **–1.27 point differential**, whereas veterans (6+ yrs) actually saw a **+0.26 point increase**, the only notable category to show an increase in Week 1. Rookies/young players consistently scored less in week 1 than their season average for every year since 2012.
![NFLpointsByExperience](https://github.com/user-attachments/assets/a65edb5f-720b-4c3f-b87d-2432be39192e)

-**Position-Level Trends:** Pass catchers (WRs & TEs) were least affected, averaging **–0.1 points**, compared to RBs and QBs who averaged **–0.51 points** in Week 1 versus season averages.  
![NFLpointsByPos](https://github.com/user-attachments/assets/9ee6043c-9cbb-40d6-98a0-08f870efbf7f)

---

## 📂 Files
- `fantasy_football_week1_analysis.sql` → SQL query used for analysis  
- `powerbi_dashboard.pbix` → Power BI dashboard file  
- `weekly_yearly_erd.png` → ERD showing relationship between weekly and yearly stats tables  

---

## Insights for Fantasy Strategy
- Elite players (top 36) show slower early-season scoring compared to broader player pools.  
  - Managers may benefit from tempering Week 1 expectations for star players while targeting value in mid-tier options.
- Intuitively, rookies and young players start off slow
- In general, week 1 performance is lower across the board and has continued to worsen in the last 12 years. This may be a result of the longer NFL season and less emphasis on the pre-season as a result as players try to manage their workload for the season, resulting in more early-season rust.

---

## Takeaways
- Top 36 fantasy players averaged **–0.78 points fewer** in Week 1 compared to their season average, while the broader top 128 players had only a **–0.26 point differential** — suggesting that **elite players tend to take longer to reach peak scoring levels.**
- **Experience Matters:** Rookies (0–1 yrs NFL experience) averaged **–1.27 point differential**, whereas veterans (6+ yrs) actually saw a **+0.26 point increase**, the only notable category to show an increase in Week 1.  
- **Position-Level Trends:** Pass catchers (WRs & TEs) were least affected, averaging **–0.1 points**, compared to RBs and QBs who averaged **–0.51 points** in Week 1 versus season averages.  
