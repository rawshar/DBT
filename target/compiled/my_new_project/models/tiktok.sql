with tiktokcte as(
select ad_id,add_to_cart,
        adgroup_id as adset_id, campaign_id,
        channel,clicks,date,
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