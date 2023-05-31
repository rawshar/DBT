with facebook as(
    select * from {{ref('facebook')}}
)
select * from facebook