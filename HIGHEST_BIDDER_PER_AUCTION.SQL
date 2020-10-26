    WITH T1 as (
        SELECT MAX(auctions_bids.bid_amt) max_bid_amt   
    FROM AUCTIONS
    INNER JOIN auctions_bids
        ON AUCTIONS.id = auctions_bids.auction_id
        
        GROUP BY AUCTIONS.id
    )
    SELECT AUCTIONS.id as auction_id,
            AUCTIONS.title as auction_title,
            auctions_bids.bid_amt as auctionbid_amt,
            USERS.USER_NAME as USERNAME
    FROM AUCTIONS
    INNER JOIN auctions_bids
        ON AUCTIONS.id = auctions_bids.auction_id
    INNER JOIN T1
        ON AUCTIONS.id = auctions_bids.auction_id
           AND auctions_bids.bid_amt = T1.max_bid_amt
    INNER JOIN users
        ON auctions_bids.user_id = users.id;
