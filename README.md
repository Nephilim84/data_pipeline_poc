Useful URLs
http://127.0.0.1:8888/tree
http://127.0.0.1:8888/notebooks/TradeDataSource_init.ipynb
http://127.0.0.1:8888/notebooks/MarketDataSource_init.ipynb
http://localhost:5434/
http://localhost:8080/

Build and deployment steps
docker compose build
 docker compose up -d


Trading Data
https://www.kaggle.com/sherrytp/cryptocurrency-historical-transaction
The dataset contains files naming by the types of currency and date. The currency includes only BCH, ETC, and LTC; the date covers September 2020. The simple explanation of columns is the following:

tradeid: unique IDs for every single transaction made on the exchange website
symbol: (category) type of currency, relatively to USDT NOTE: there are also exceptions not linking to USDT.
ts: timestamp of that certain transaction made
price
amount: transaction size
direction: (category) sell or buy

Market data
https://www.kaggle.com/taniaj/cryptocurrency-market-history-coinmarketcap

#Data sync
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-source.json
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-sink_marketdata.json
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-sink_trade.json


#front-end
https://github.com/plotly/dash-sample-apps/tree/main/apps/dash-web-trader



* Standalone
cd frontend/
docker build -t frontend .
docker run -d -p 80:8050 frontend

* Docker compose
VERSION=1.0.0
TARGET=LIVE
Now create the Compose file, which in our case is minimalistic:

version: "3.7"
services:
  app-name:
    build:
      context: .
    image: app-name:$VERSION
    container_name: app-name
    ports:
      - "to:from"
    environment:
      - TARGET=$TARGET
    restart: unless-stopped






#load Data Catalog
# For Neo4j Backend
$ docker-compose -f docker-amundsen.yml up

# For Atlas
$ docker-compose -f docker-amundsen-atlas.yml up



