
  
    

    create or replace table `improvado-388205`.`dbt_rawshar`.`twitter`
    
    
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
        from `improvado-388205`.`dbt_rawshar`.`src_promoted_tweets_twitter_all_data`
)
select * from twittercte
    );
  