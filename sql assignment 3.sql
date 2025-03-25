-- c1) Uses date_part function to take records whose years are equal to 2009 and 
-- equalizes the country name to USA. Then fetchs the sum of the billings 
-- that provides all conditions with sum and where functions.
select sum(total) as total_sum from invoice
where billing_country = 'USA' and date_part('year', invoice_date) = 2009;

-- c2) Combines track, playlisttrack and playlist tables with inner join using table aliases 
-- and fetchs all columns using select and from functions
select *
from track as t
inner join playlisttrack as plt on t.track_id = plt.track_id
inner join playlist as pl on plt.playlist_id = pl.playlist_id;

-- c3) Combines track, album and artist tables using inner join and 
-- also controls the album title that is equal to 'Let There Be Rock' while combining the tables.
-- Then, fetchs all columns ordering by the milliseconds column that owns the track table. 
select * from album;
select * 
from album as al
inner join track as t on t.album_id = al.album_id and al.title = 'Let There Be Rock'
inner join artist as art on art.artist_id = al.album_id
order by t.milliseconds desc;








