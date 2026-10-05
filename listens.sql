-- Топ треков
SELECT t.title, a.name, COUNT(*) AS plays
FROM listens l
JOIN tracks t ON l.track_id=t.id
JOIN artists a ON t.artist_id=a.id
GROUP BY t.id ORDER BY plays DESC;

-- Активные слушатели
SELECT u.name, COUNT(*) AS n FROM listens l
JOIN users u ON l.user_id=u.id
GROUP BY u.id ORDER BY n DESC;

-- Топ артистов
SELECT a.name, COUNT(*) AS plays
FROM listens l
JOIN tracks t ON l.track_id=t.id
JOIN artists a ON t.artist_id=a.id
GROUP BY a.id ORDER BY plays DESC;
