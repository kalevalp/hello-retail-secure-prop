'use strict';

const { KV_Store } = require('kv-store');
const fs = require('fs');

const conf = JSON.parse(fs.readFileSync('conf.json', 'utf8'));

const constants = {
  TABLE_PRODUCT_CATALOG_NAME: process.env.TABLE_PRODUCT_CATALOG_NAME,
  TABLE_PRODUCT_PRICE_NAME: process.env.TABLE_PRODUCT_PRICE_NAME,
};


module.exports.delete = (event, context, callback) => {
  console.log(event);
  const kvCatalog = new KV_Store(conf.host, conf.user, conf.pass, constants.TABLE_PRODUCT_CATALOG_NAME);
  const kvPrice = new KV_Store(conf.host, conf.user, conf.pass, constants.TABLE_PRODUCT_PRICE_NAME);

  Promise.all([
    kvCatalog.init()
      .then(() => kvCatalog.get(event.id))
      .then(res => kvCatalog.close().then(() => res)),
    kvPrice.init()
      .then(() => kvPrice.get(event.id))
      .then(res => kvPrice.close().then(() => res))
  ])
    .then(res => callback(null, {id: event.id, item: res[0], price: res[1]} ))
    .catch(err => callback(err))
};
