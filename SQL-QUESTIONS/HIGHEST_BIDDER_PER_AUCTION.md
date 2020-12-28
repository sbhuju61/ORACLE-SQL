# Get the auction info and user name of highest bidder in each auction.

Auctions:

 | id | title     |
|----|-----------|
| 1  | Auction 1 |
| 2  | Auction 2 |

Auction Bids:

| id | user_id | auction_id | bid_amt |
|----|---------|------------|---------|
| 1  | 1       | 1          | 200     |
| 2  | 2       | 1          | 202     |
| 3  | 1       | 2          | 100     |
  
Users:
| user_id | User_name |
|---------|-----------|
| 1       | Bidder1   |
| 2       | Bidder2   |
    
 Expected Result:
| auction_id | auction_title | auctionbid_amt | user_username |
|------------|---------------|----------------|---------------|
| 1          | Auction 1     | 202            | Bidder2       |
| 2          | Auction 2     | 100            | Bidder1       |
