

  create or replace view `improvado-388205`.`dbt_rawshar`.`twitter`
  OPTIONS()
  as with twittercte as(
select campaign_id,
        channel,clicks,
        comments,date,engagements,impressions,likes, url_clicks as link_clicks,
        retweets as shares, spend,
        video_total_views as video_views
        from `improvado-388205`.`dbt_rawshar`.`src_promoted_tweets_twitter_all_data`
)
select * from twittercte;

