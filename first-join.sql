SELECT 
Name AS ArtistName,
Title AS AlbumName
FROM artists
INNER JOIN albums ON albums.ArtistId = artists.ArtistId LIMIT 100;