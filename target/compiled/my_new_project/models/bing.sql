with bingcte as(
select ad_id,adset_id,campaign_id, channel,clicks,
        date,imps as impressions, 
        revenue,spend, conv as total_conversions
        from `improvado-388205`.`dbt_rawshar`.`src_ads_bing_all_data`
)
select * from bingcte