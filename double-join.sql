SELECT DISTINCT tracks."Name" AS TrackName, playlists."Name" AS PlayslistName
FROM playlist_track
INNER JOIN playlist ON playlists.PlaylistId=playlist_track.PlaylistId
INNER JOIN tracks ON tracks.TrackId=playlist_track.TrackId
WHERE playlists."Name" = 'TV Shows'
LIMIT 100;