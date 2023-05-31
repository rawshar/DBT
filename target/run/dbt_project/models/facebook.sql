
  
    

    create or replace table `improvado-388205`.`dbt_rawshar`.`facebook`
    
    
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
        spend
        from `improvado-388205`.`dbt_rawshar`.`src_ads_creative_facebook_all_data`
)



select * from facebookcte
    );
  