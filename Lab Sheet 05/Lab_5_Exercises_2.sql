--Exercise 2
--a.
SELECT DISTINCT S.starName
FROM StarsIn S, Movie M
WHERE S.movieTitle = M.title AND S.movieYear = M.year AND M.directorName = 'Jon Watts';

--b.
SELECT Sh.movieTitle, SUM(Sh.spectators) AS totalSpectators 
FROM Show Sh, Theater T 
WHERE Sh.theaterName = T.theaterName AND T.city = 'LA' 
GROUP BY Sh.movieTitle;

--c.
SELECT B.custName 
FROM Booking B, Show Sh 
WHERE B.showId = Sh.showId 
GROUP BY B.custName 
HAVING COUNT(DISTINCT Sh.movieTitle) > 1;

--d.
SELECT Sh.theaterName 
FROM Show Sh 
GROUP BY Sh.theaterName 
HAVING SUM(Sh.ticketPrice * Sh.spectators) > 50000;

--e.
SELECT B.custName 
FROM Booking B, Show Sh 
WHERE B.showId = Sh.showId 
GROUP BY B.custName 
HAVING COUNT( DISTINCT Sh.theaterName) > 1;



