

  create or replace view `improvado-388205`.`dbt_rawshar`.`facebook`
  OPTIONS()
  as with facebookcte as(
select ad_id,add_to_cart,adset_id,campaign_id, channel,clicks,comments,
        creative_id,date,impressions, 
        mobile_app_install as installs,
        likes,
        inline_link_clicks as link_clicks,
        purchase,
        complete_registration as registrations,
        shares,spend
        from `improvado-388205`.`dbt_rawshar`.`src_ads_creative_facebook_all_data`
)
select * from facebookcte;

