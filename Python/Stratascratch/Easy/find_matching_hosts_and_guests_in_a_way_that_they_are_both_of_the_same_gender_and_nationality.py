# https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality?code_type=2

airbnb_hosts.merge(airbnb_guests, on=['nationality', 'gender'],how='left')[['host_id', 'guest_id']].drop_duplicates()
