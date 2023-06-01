
  
    

    create or replace table `improvadochallenge`.`dbt_rawshar`.`facebook`
    
    
    OPTIONS()
    as (
      

with facebookcte as(
select cast(ad_id as string) as ad_id,
        cast(add_to_cart as int) as add_to_cart,
        cast(adset_id as string) as adset_id,
        cast(campaign_id as string) as campaign_id, 
        cast(channel as string) as channel,
        clicks,
        comments,
        cast(creative_id as string) as creative_id,
        date,
        impressions, 
        mobile_app_install as installs,
        likes,
        inline_link_clicks as link_clicks,
        purchase,
        complete_registration as registrations,
        shares,
        spend,
        purchase as total_conversions,
        likes + shares +  comments +  views +  clicks as engagements
        from `improvadochallenge`.`dbt_rawshar`.`src_ads_creative_facebook_all_data`
)
/*
ALTER table facebookcte add column `placement_id` string;
ALTER TABLE facebookcte ALTER COLUMN `placement_id` SET DEFAULT " ";
UPDATE facebookcte SET placement_id = " " WHERE TRUE;

ALTER table facebookcte add column `placement_id` int;
ALTER TABLE facebookcte ALTER COLUMN `placement_id` SET DEFAULT 0;
UPDATE facebookcte SET placement_id =0 WHERE TRUE;

ALTER table facebookcte add column `post_click_conversions` int;
ALTER TABLE facebookcte ALTER COLUMN `post_click_conversions` SET DEFAULT 0;
UPDATE facebookcte SET post_click_conversions =0 WHERE TRUE;

ALTER table facebookcte add column `post_view_conversions` int;
ALTER TABLE facebookcte ALTER COLUMN `post_view_conversions` SET DEFAULT 0;
UPDATE facebookcte SET post_view_conversions =0 WHERE TRUE;

ALTER table facebookcte add column `revenue` int;
ALTER TABLE facebookcte ALTER COLUMN `revenue` SET DEFAULT 0;
UPDATE facebookcte SET revenue =0 WHERE TRUE;

ALTER table facebookcte add column `total_conversions` int;
ALTER TABLE facebookcte ALTER COLUMN `total_conversions` SET DEFAULT 0;
UPDATE facebookcte SET total_conversions =0 WHERE TRUE;

ALTER table facebookcte add column `video_views` int;
ALTER TABLE facebookcte ALTER COLUMN `video_views` SET DEFAULT 0;
UPDATE facebookcte SET video_views =0 WHERE TRUE;
*/
select * from facebookcte
    );
  