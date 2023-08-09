# Marketing common data modelling challenge
Marketing  data modelling !


In this situation, we need you to:
- Begin a new project in dbt Cloud, utilizing Google Big Query as the DWH.
- Use the raw data from the ad platforms and the MCDM table structure for the ads_basic_performance report to develop a corrected MCDM model:
	- The model must include data from all the provided ad platforms.
	- The model's columns must match the structure of the provided MCDM table.
	- The model should be simple to update with any new ad platforms that may be introduced.
- Recreate the [dashboard](https://lookerstudio.google.com/reporting/fa668749-b82f-41a8-a12e-f7d9c0733b57/page/tEnnC) using Google Looker Studio. Here are hints for metrics in dashboard:
	- *Cost per engage* is just a spended sum divided by sum of engagements
	- *Conversion cost* is calculated by dividing sum of spended by total conversions count
	- *Impressions by channel* is a sum of impressions for each channel
	- *CPC* gets like sum of spended divided by clicks count



## Required Tools
To complete this task, you will need the following tools:
-   dbt Cloud
-   Google Big Query
-   Google Looker Studio



This is the foundational repository for project. Clone it and start your dbt Cloud from it.

The repository includes raw data from various ad platforms, as well as the MCDM structure for the ads_basic_performance report, which are provided as seeds:

-   src_ads_bing_all_data
-   src_ads_creative_facebook_all_data
-   src_ads_tiktok_ads_all_data
-   src_promoted_tweets_twitter_all_data
-   mcdm_paid_ads_basic_performance_structure

To build the seeds, run `dbt seed` in the dbt Cloud console. Once the seeds have been built, you can access the data using `ref()`. For example, you can use `select * from {{ ref('src_ads_bing_all_data')}}` to access data from the `src_ads_bing_all_data` seed.
