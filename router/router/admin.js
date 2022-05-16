const express = require('express')
// 创建路由对象
const router = express.Router()

const shopHandler = require('../router_handler/admin')

// 插入商品
router.post('/insertShop',shopHandler.insertShop)

// 修改商品
router.post('/updateshop',shopHandler.updateShop)

// 删除商品
router.post('/deleteshop',shopHandler.deleteshop)

// 插入广告
router.post('/insertAd',shopHandler.insertAd)

module.exports = router