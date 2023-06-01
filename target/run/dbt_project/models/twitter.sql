
  
    

    create or replace table `improvadochallenge`.`dbt_rawshar`.`twitter`
    
    
    OPTIONS()
    as (
      

with twittercte as(
select cast(campaign_id as string) as campaign_id,
        cast(channel as string) as channel,
        clicks,
        comments,
        date,
        engagements,
        impressions,
        likes, 
        url_clicks as link_clicks,
        retweets as shares, 
        spend,
        video_total_views as video_views
        from `improvadochallenge`.`dbt_rawshar`.`src_promoted_tweets_twitter_all_data`
)
/*
ALTER table twittercte add column `ad_id` string;
ALTER TABLE twittercte ALTER COLUMN `ad_id` SET DEFAULT " ";
UPDATE twittercte SET ad_id = " " WHERE TRUE;

ALTER table twittercte add column `adset_id` string;
ALTER TABLE twittercte ALTER COLUMN `adset_id` SET DEFAULT " ";
UPDATE twittercte SET adset_id = " " WHERE TRUE;

ALTER table twittercte add column `campaign_id` string;
ALTER TABLE twittercte ALTER COLUMN `campaign_id` SET DEFAULT " ";
UPDATE twittercte SET campaign_id = " " WHERE TRUE;

ALTER table twittercte add column `creative_id` string;
ALTER TABLE twittercte ALTER COLUMN `creative_id` SET DEFAULT " ";
UPDATE twittercte SET creative_id = " " WHERE TRUE;

ALTER table twittercte add column `placement_id` string;
ALTER TABLE twittercte ALTER COLUMN `placement_id` SET DEFAULT " ";
UPDATE twittercte SET placement_id = " " WHERE TRUE;

ALTER table twittercte add column `add_to_cart` int;
ALTER TABLE twittercte ALTER COLUMN `add_to_cart` SET DEFAULT 0;
UPDATE twittercte SET add_to_cart = 0 WHERE TRUE;

ALTER table twittercte add column `installs` int;
ALTER TABLE twittercte ALTER COLUMN `installs` SET DEFAULT 0;
UPDATE twittercte SET installs = 0 WHERE TRUE;

ALTER table twittercte add column `post_view_conversions` int;
ALTER TABLE twittercte ALTER COLUMN `post_view_conversions` SET DEFAULT 0;
UPDATE twittercte SET post_view_conversions = 0 WHERE TRUE;

ALTER table twittercte add column `posts` int;
ALTER TABLE twittercte ALTER COLUMN `posts` SET DEFAULT 0;
UPDATE twittercte SET posts = 0 WHERE TRUE;

ALTER table twittercte add column `purchase` int;
ALTER TABLE twittercte ALTER COLUMN `purchase` SET DEFAULT 0;
UPDATE twittercte SET purchase = 0 WHERE TRUE;

ALTER table twittercte add column `registrations` int;
ALTER TABLE twittercte ALTER COLUMN `registrations` SET DEFAULT 0;
UPDATE twittercte SET registrations = 0 WHERE TRUE;

ALTER table twittercte add column `revenue` int;
ALTER TABLE twittercte ALTER COLUMN `revenue` SET DEFAULT 0;
UPDATE twittercte SET revenue = 0 WHERE TRUE;
*/
select * from twittercte
    );
  