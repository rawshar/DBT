
  
    

    create or replace table `improvadochallenge`.`dbt_rawshar`.`bing`
    
    
    OPTIONS()
    as (
      

with bingcte as(
select cast(ad_id as string) as ad_id,
        cast(adset_id as string) as adset,
        cast(campaign_id as string) as campaign_id,
        channel,
        clicks,
        date,
        imps as impressions, 
        revenue,
        spend, 
        conv as total_conversions
        from `improvadochallenge`.`dbt_rawshar`.`src_ads_bing_all_data`
)
/*
ALTER table bingcte add column `creative_id` string;
ALTER TABLE bingcte ALTER COLUMN `creative_id` SET DEFAULT " ";
UPDATE bingcte SET creative_id = " " WHERE TRUE;

ALTER table bingcte add column `placement_id` string;
ALTER TABLE bingcte ALTER COLUMN `placement_id` SET DEFAULT " ";
UPDATE bingcte SET placement_id = " " WHERE TRUE;

ALTER table bingcte add column `add_to_cart` int;
ALTER TABLE bingcte ALTER COLUMN `add_to_cart` SET DEFAULT 0;
UPDATE bingcte SET add_to_cart = 0 WHERE TRUE;

ALTER table bingcte add column `comments` int;
ALTER TABLE bingcte ALTER COLUMN `comments` SET DEFAULT 0;
UPDATE bingcte SET comments = 0 WHERE TRUE;

ALTER table bingcte add column `engagements` int;
ALTER TABLE bingcte ALTER COLUMN `engagements` SET DEFAULT 0;
UPDATE bingcte SET engagements = 0 WHERE TRUE;

ALTER table bingcte add column `impressions` int;
ALTER TABLE bingcte ALTER COLUMN `impressions` SET DEFAULT 0;
UPDATE bingcte SET impressions = 0 WHERE TRUE;

ALTER table bingcte add column `installs` int;
ALTER TABLE bingcte ALTER COLUMN `installs` SET DEFAULT 0;
UPDATE bingcte SET installs = 0 WHERE TRUE;

ALTER table bingcte add column `likes` int;
ALTER TABLE bingcte ALTER COLUMN `likes` SET DEFAULT 0;
UPDATE bingcte SET likes = 0 WHERE TRUE;

ALTER table bingcte add column `link_clicks` int;
ALTER TABLE bingcte ALTER COLUMN `link_clicks` SET DEFAULT 0;
UPDATE bingcte SET link_clicks = 0 WHERE TRUE;

ALTER table bingcte add column `post_click_conversions` int;
ALTER TABLE bingcte ALTER COLUMN `post_click_conversions` SET DEFAULT 0;
UPDATE bingcte SET post_click_conversions = 0 WHERE TRUE;

ALTER table bingcte add column `posts` int;
ALTER TABLE bingcte ALTER COLUMN `posts` SET DEFAULT 0;
UPDATE bingcte SET posts = 0 WHERE TRUE;

ALTER table bingcte add column `shares` int;
ALTER TABLE bingcte ALTER COLUMN `shares` SET DEFAULT 0;
UPDATE bingcte SET shares = 0 WHERE TRUE;

ALTER table bingcte add column `video_views` int;
ALTER TABLE bingcte ALTER COLUMN `video_views` SET DEFAULT 0;
UPDATE bingcte SET video_views = 0 WHERE TRUE;
*/

select * from bingcte
    );
  