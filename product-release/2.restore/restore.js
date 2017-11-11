'use strict';

const { KV_Store } = require('kv-store');
const fs = require('fs');

const conf = JSON.parse(fs.readFileSync('conf.json', 'utf8'));

const constants = {
  TABLE_PRODUCT_CATALOG_NAME: process.env.TABLE_PRODUCT_CATALOG_NAME,
  TABLE_PRODUCT_PRICE_NAME: process.env.TABLE_PRODUCT_PRICE_NAME,
};


module.exports.restore = (event, context, callback) => {
  console.log(event);
  const kvCatalog = new KV_Store(conf.host, conf.user, conf.pass, constants.TABLE_PRODUCT_CATALOG_NAME);
  const kvPrice = new KV_Store(conf.host, conf.user, conf.pass, constants.TABLE_PRODUCT_PRICE_NAME);

  Promise.all([
    kvCatalog.init()
      .then(() => kvCatalog.put(event.id, event.item))
      .then(() => kvCatalog.close()),
    kvPrice.init()
      .then(() => kvPrice.put(event.id, event.price))
      .then(() => kvPrice.close())
  ])
    .then(res => callback(null))
    .catch(err => callback(err))
};
