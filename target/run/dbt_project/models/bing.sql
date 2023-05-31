
  
    

    create or replace table `improvado-388205`.`dbt_rawshar`.`bing`
    
    
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
        from `improvado-388205`.`dbt_rawshar`.`src_ads_bing_all_data`
)
select * from bingcte
    );
  