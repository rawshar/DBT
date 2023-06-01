{{ config(materialized='view') }}
with finalcte as (
SELECT ad_id, add_to_cart, adset_id,campaign_id, channel,clicks,date,impressions,installs,purchase,registrations,spend,total_conversions,video_views,placement_id,creative_id,comments,engagements,likes,link_clicks,post_click_conversions,post_view_conversions,posts,revenue,shares
FROM {{ref('facebook')}}/*. or use this `improvadochallenge.dbt_rawshar.twitter`*/
UNION ALL
SELECT ad_id, add_to_cart, adset_id,campaign_id, channel,clicks,date,impressions,installs,purchase,registrations,spend,total_conversions,video_views,placement_id,creative_id,comments,engagements,likes,link_clicks,post_click_conversions,post_view_conversions,posts,revenue,shares
FROM {{ref('tiktok')}}/*. or use this `improvadochallenge.dbt_rawshar.tiktok`*/
UNION ALL
SELECT ad_id, add_to_cart, adset_id,campaign_id, channel,clicks,date,impressions,installs,purchase,registrations,spend,total_conversions,video_views,placement_id,creative_id,comments,engagements,likes,link_clicks,post_click_conversions,post_view_conversions,posts,revenue,shares
FROM {{ref('bing')}}/*. or use this `improvadochallenge.dbt_rawshar.bing`*/

UNION ALL
SELECT ad_id, add_to_cart, adset_id,campaign_id, channel,clicks,date,impressions,installs,purchase,registrations,spend,total_conversions,video_views,placement_id,creative_id,comments,engagements,likes,link_clicks,post_click_conversions,post_view_conversions,posts,revenue,shares
FROM {{ref('twitter')}}/*. or use this `improvadochallenge.dbt_rawshar.facebook`*/
)

select * from finalcte
