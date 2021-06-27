CREATE TABLE trade
(
    id bigint NOT NULL,
    symbol text,
    ts timestamp,
    price double precision,
    amount double precision,
    direction text,
    CONSTRAINT trade_pkey PRIMARY KEY (id)
);

--INSERT INTO trade(id, symbol, ts, price, amount, direction) VALUES
-- (101089750351,'bchusdt',1598889601108,277.5000000000000000000,0.994100000000000000,'sell');


