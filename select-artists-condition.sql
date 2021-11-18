SELECT Name
FROM artists
INNER JOIN albums ON albums.ArtistId = artists.ArtistId
GROUP BY albums.ArtistId
HAVING COUNT(albums.AlbumId) > 3
ORDER BY Name DESC 