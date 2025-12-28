-- Split future partition safely
ALTER TABLE orders
SPLIT PARTITION orders_future
AT (DATE '2025-10-01')
INTO (
    PARTITION orders_2025_q3,
    PARTITION orders_future
);

