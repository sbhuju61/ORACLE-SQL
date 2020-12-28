SELECT Trips.*, Users.* 
FROM Trips
LEFT JOIN Users
    ON Trips.Client_Id = Users.Users_Id
    AND Trips.Driver_Id = Users.Users_Id
WHERE Users.Banned = 'No'
AND 
(Trips.Request_at  = '2013/10/01'
 OR
 Trips.Request_at  = '2013/10/02'
 OR
 Trips.Request_at  = '2013/10/03'
 )
 ;