
  
    

    create or replace table `improvado-388205`.`dbt_rawshar`.`tiktok`
    
    
    OPTIONS()
    as (
      

with tiktokcte as(
select cast(ad_id as string) as ad_id,
        add_to_cart,
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
        conversions as total_conversions,
        video_views
        from `improvado-388205`.`dbt_rawshar`.`src_ads_tiktok_ads_all_data`
)
select * from tiktokcte
    );
  