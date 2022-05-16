# 说明

#### 介绍

##### 暂时的白给商城服务端

### 运行

##### nodemon app / node app

## api：
http://127.0.0.1:3007

### get 请求：
#### http://127.0.0.1:3007/all

* #### 查询商品 star：每页起始数据点 （type：number;选填），end:每页数据量（type：number；选填）
  * /selectShop?star=?&end=?

* #### 根据商品id查询商品==详情==
  * /selectDetails?shop_id=?

* #### 根据用户ID搜索用户保存的==地址==
  * /selectAddress?user_id=?

* #### 删除==地址== 根据特定的地址id删除
  * /deleteAddress?id=?

* #### 插入==收藏== 根据用户id和商品id插入
  * /insertCollection?user_id=?&shop_id=?

* #### 根据用户ID搜索用户保存的==收藏==的商品
  * /selectcollection?user_id=?

* #### 删除==收藏== 根据用户id和商品id删除
  * /deleteCollection?user_id=?&shop_id=?

* #### ==搜索页==
  * /search?title = ?

* #### 根据用户id查询用户==购物车==
  * /selectcart?user_id=？

* #### 插入==购物车== 根据用户id插入相应的商品id
  * /insertCart？user_id=?&shop_id=?

* #### 删除==购物车== 根据用户id和商品id删除
  * /deleteCart?user_id=?&shop_id=?

* #### ==更多==页查询
  * /selectMore

* #### 更新/插入==足迹== 根据用户id和商品id
  * /insertfootprint?user_id=?&shop_id=?

* #### 查询==足迹==
  * /selectfootprint

* #### ==分类页==
  * /selectMore

* #### 查询==订单==
  * /SelectOrder


### post请求：

* #### 插入==地址==
  * all/insertAddress
      ##### data:{
          user_id:? 
          number:?(电话号码)
          address:?(详细地址)
          name:?(名字)
      ##### }

* #### 修改==地址==
  * all/updateAddress
      ##### data:{
          number:?(电话号码)
          address:?(详细地址)
          name:?(名字)
          id:?(用户地址唯一id)
      #### }

* #### 插入==订单==
  * all/insertOrder
      ##### data:{
        user_id,
        shop_id,
        num,date,
        address_id,
        state
      ##### }

* #### 支付后
  * /PayOrer
      ##### data:{
        user_id
      ##### }