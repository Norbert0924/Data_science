# https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=1

select distinct p.*
from facebook_reactions r
left join facebook_posts p
on r.post_id=p.post_id
where r.reaction='heart';
