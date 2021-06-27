# Build and deployment steps  
```docker
docker compose build  
docker compose up -d  
```
# Data sync
```
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-source.json  
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-sink_marketdata.json  
curl -X POST http://localhost:8083/connectors     -H "Content-Type: application/json"     --data @config/connectors/postgresql-sink_trade.json
```

# Useful URLs  
Jupyter notebook: http://127.0.0.1:8888/tree  
* http://127.0.0.1:8888/notebooks/TradeDataSource_init.ipynb  
* http://127.0.0.1:8888/notebooks/MarketDataSource_init.ipynb  

PGAdmin: http://localhost:5434/  
Front-end: http://localhost:8080/  

# Front-end
https://github.com/plotly/dash-sample-apps/tree/main/apps/dash-web-trader


# Dataset
## Trading Data
https://www.kaggle.com/sherrytp/cryptocurrency-historical-transaction  
The dataset contains files naming by the types of currency and date. The currency includes only BCH, ETC, and LTC; the date covers September 2020. The simple explanation of columns is the following:

* tradeid: unique IDs for every single transaction made on the exchange website
* symbol: (category) type of currency, relatively to USDT NOTE: there are also exceptions not linking to USDT.
* ts: timestamp of that certain transaction made
* price
* amount: transaction size
* direction: (category) sell or buy

## Market data
https://www.kaggle.com/taniaj/cryptocurrency-market-history-coinmarketcap


# Data Catalog
```docker
#For Neo4j Backend
docker-compose -f docker-amundsen.yml up
## For Atlas
docker-compose -f docker-amundsen-atlas.yml up
```


