const express = require('express')
// 创建路由对象
const router = express.Router()

const shopHandler = require('../router_handler/all_user')




// 查询商品
router.get('/selectShop',shopHandler.selectShop)

// 查询detail
router.get('/selectDetails',shopHandler.selectDetails)

// 查询地址
router.get('/selectAddress',shopHandler.selectAddress)

// 查询收藏
router.get('/selectcollection',shopHandler.selectcollection)

// 查询购物车
router.get('/selectcart',shopHandler.selectcart)

// 删除地址
router.get('/deleteAddress',shopHandler.deleteAddress)

// 删除收藏
router.get('/deleteCollection',shopHandler.deleteCollection)

// 插入购物车
router.get('/insertCart',shopHandler.insertCart)

// 删除购物车
router.get('/deleteCart',shopHandler.deleteCart)

// search页
router.get('/search',shopHandler.search)

// 插入收藏
router.get('/insertCollection',shopHandler.insertCollection)

// 足迹 
router.get('/insertfootprint',shopHandler.insertfootprint)

// 查足迹
router.get('/selectfootprint',shopHandler.selectfootprint)

// 分类页
router.get('/selectMore',shopHandler.selectMore)

// 插入地址
router.post('/insertAddress',shopHandler.insertAddress)

// 修改地址
router.post('/updateAddress',shopHandler.updateAddress)

// 订单
router.post('/insertOrder',shopHandler.insertOrder)

// 支付后
router.post('/PayOrer',shopHandler.PayOrer)

// 查订单
router.get('/SelectOrder',shopHandler.SelectOrder)

// 待支付
router.get('/ReadyPay',shopHandler.ReadyPay)

module.exports = router