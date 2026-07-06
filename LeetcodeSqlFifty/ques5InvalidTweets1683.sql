# Write your MySQL query statement below
select tweet_id from Tweets where length(content) >15;
-- Or another is using char_length as length compares in terms of bytes and char_length is in terms of no. of characters.
select tweet_id from Tweets where char_length(content) >15;