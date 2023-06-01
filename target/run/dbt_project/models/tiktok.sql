
  
    

    create or replace table `improvadochallenge`.`dbt_rawshar`.`tiktok`
    
    
    OPTIONS()
    as (
      

with tiktokcte as(
select cast(ad_id as string) as ad_id,
        cast(add_to_cart as int) as add_to_cart,
        cast(adgroup_id as string) as adset_id, 
        cast(campaign_id as string) as campaign_id,
        cast(channel as string) as channel,
        clicks,
        date,
        impressions,
        skan_app_install as installs,
        purchase,
        registrations,
        spend,
        conversions+skan_conversion as total_conversions,
        video_views
        from `improvadochallenge`.`dbt_rawshar`.`src_ads_tiktok_ads_all_data`
)
/*
ALTER table tiktokcte add column `creative_id` string;
ALTER TABLE tiktokcte ALTER COLUMN `creative_id` SET DEFAULT " ";
UPDATE tiktokcte SET creative_id = " " WHERE TRUE;

ALTER table tiktokcte add column `placement_id` string;
ALTER TABLE tiktokcte ALTER COLUMN `placement_id` SET DEFAULT " ";
UPDATE tiktokcte SET placement_id = " " WHERE TRUE;

ALTER table tiktokcte add column `comments` int;
ALTER TABLE tiktokcte ALTER COLUMN `comments` SET DEFAULT 0;
UPDATE tiktokcte SET comments = 0 WHERE TRUE;

ALTER table tiktokcte add column `engagements` int;
ALTER TABLE tiktokcte ALTER COLUMN `engagements` SET DEFAULT 0;
UPDATE tiktokcte SET engagements = 0 WHERE TRUE;

ALTER table tiktokcte add column `link_clicks` int;
ALTER TABLE tiktokcte ALTER COLUMN `link_clicks` SET DEFAULT 0;
UPDATE tiktokcte SET link_clicks = 0 WHERE TRUE;

ALTER table tiktokcte add column `post_click_conversions` int;
ALTER TABLE tiktokcte ALTER COLUMN `post_click_conversions` SET DEFAULT 0;
UPDATE tiktokcte SET post_click_conversions = 0 WHERE TRUE;

ALTER table tiktokcte add column `post_view_conversions` int;
ALTER TABLE tiktokcte ALTER COLUMN `post_view_conversions` SET DEFAULT 0;
UPDATE tiktokcte SET post_view_conversions = 0 WHERE TRUE;

ALTER table tiktokcte add column `posts` int;
ALTER TABLE tiktokcte ALTER COLUMN `posts` SET DEFAULT 0;
UPDATE tiktokcte SET posts = 0 WHERE TRUE;

ALTER table tiktokcte add column `revenue` int;
ALTER TABLE tiktokcte ALTER COLUMN `revenue` SET DEFAULT 0;
UPDATE tiktokcte SET revenue = 0 WHERE TRUE;

ALTER table tiktokcte add column `shares` int;
ALTER TABLE tiktokcte ALTER COLUMN `shares` SET DEFAULT 0;
UPDATE tiktokcte SET shares = 0 WHERE TRUE;
*/
select * from tiktokcte
    );
  