// 导入数据库操作模块
const db = require('../db/index')
moment = require('moment')



// 查询商品
exports.selectShop = (req,res)=>{
    let result = {
        shop:[],
        activity:[],
        advertisement:[]
    }
    const sql = `select * from shop limit ${req.query.star == undefined?0:req.query.star} , ${req.query.end == undefined?99999:req.query.end}`
    db.query(sql,(err,results)=>{
        if (err) return res.cc(err)
      
        // 执行 SQL 语句成功，但是影响行数不等于 1
        // if(results.length !== 1) return res.cc('获取数据失败')

        result.shop.push(results)
        // console.log(results.date);
    })
    // 活动商品
    const ActSql = `select * from shop where activity = 1 order by date desc limit 5`
    db.query(ActSql,(err,results)=>{
        if (err) return res.cc(err)

        result.activity.push(results)
    })
    // 广告
    const AdSql = `select * from advertisement order by date desc limit 5`
    db.query(AdSql,(err,results)=>{
        if (err) return res.cc(err)

        result.advertisement.push(results)
        res.send(result)
    })
}

// 查询详情
exports.selectDetails = (req,res)=>{
    let result={
        shop:[],
        detailImg:[],
        specifications:[]
    }

    const Ssql = `select * from shop where shop_id = ?`

    db.query(Ssql,req.query.shop_id,(err,results)=>{
        if (err) return res.cc(err)

        result.shop.push(results)
    })

   const sql = `select * from detail where shop_id=?` ;
   db.query(sql,req.query.shop_id,(err,results)=>{
        if (err) return res.cc(err)

        for(let i = 0 ; i<results.length;i++){
            result.detailImg.push(results[i].detailImg)
        }
        // console.log(result);
        // res.send(results)
   })

//    查询规格
   const specificationsSql = `select * from specifications where shop_id=?`

   db.query(specificationsSql,req.query.shop_id,(err,results)=>{
    if (err) return res.cc(err)

    const Speresult = new Map();
    results.map(item => {
        Speresult.set(item.body, [...(Speresult.get(item.body) || ''), item.choose])
    })

    let specificationsarr = Array.from(Speresult)
    // console.log(specificationsarr[0]);
    // console.log(results);
    for(let i = 0 ; i<specificationsarr.length;i++){
        result.specifications.push(specificationsarr[i])
    }
    // console.log(result.specifications);
    res.send(result)
})

}

// 查询地址
exports.selectAddress = (req,res)=>{
    const sql = `select * from user_address where user_id = ?`
    db.query(sql,req.query.user_id,(err,results)=>{
        if (err) return res.cc(err)
       
        res.send(results)
    })
}

// 查询收藏
exports.selectcollection = (req,res)=>{
    const sql = `select * from collection where user_id = ?`
    let collection = []
    let time
    db.query(sql,req.query.user_id,(err,results)=>{
        if (err) return res.cc(err)

        // res.send(results[0])
        const shopSql = `select * from shop where shop_id = ?`

        for(let i=0;i<results.length;i++){
            //    循环结束后执行setTimeout
               clearTimeout(time)
                db.query(shopSql,results[i].shop_id,(err,results)=>{
                    if (err) return res.cc(err)
                    // console.log(result)
                    collection.push(results)
                })
                time = setTimeout(()=>{
                    res.send(collection)
               },100)
           }
        
    })
}

// 查询购物车
exports.selectcart = (req,res)=>{
    const sql = `select * from cart where user_id = ?`
    let cart = []
    let time
    db.query(sql,req.query.user_id,(err,results)=>{
        if (err) return res.cc(err)

        const shopSql = `select * from shop where shop_id = ?`
       for(let i=0;i<results.length;i++){
           let num = results[i].num
        //    循环结束后执行setTimeout
           clearTimeout(time)
            db.query(shopSql,results[i].shop_id,(err,results)=>{
                if (err) return res.cc(err)
                results[0].num=num
                results[0].checked = false
                cart.push(results)
            })
            //    循环结束后执行setTimeout
            time = setTimeout(()=>{
                res.send(cart)
           },100)
       }
       
       
        
    })
}

// 插入地址
exports.insertAddress = (req,res)=>{
    const sql = `insert into user_address (user_id,number,address,NAME) values(?,?,?,?)`
    console.log(req);
    console.log(req.body);
    db.query(sql,[req.body.user_id,req.body.number,req.body.address,req.body.name],(err,results)=>{

        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('插入失败！')

        console.log(results);
        res.send('ok')
    })
}

// 修改地址
exports.updateAddress = (req,res)=>{
    const sql = `update user_address set number=?,address=?,name=? where id = ?`
    db.query(sql,[req.body.number,req.body.address,req.body.name,req.body.id],(err,results)=>{

        if (err) return res.cc(err)

    // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('修改失败！')
        res.send('ok')
    })
}

// 删除地址
exports.deleteAddress = (req,res)=>{
    const sql = `delete from user_address where id=?`
    db.query(sql,req.query.id,(err,results)=>{
        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('删除失败！')

        res.send('ok')
    })
}

// 插入收藏
exports.insertCollection = (req,res)=>{
    const sql = `insert into collection values(?,?)`
    // console.log(req.body);
    db.query(sql,[req.query.user_id,req.query.shop_id],(err,results)=>{
        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('插入失败！')

        res.send('ok')

    })
}

// 删除收藏
exports.deleteCollection = (req,res)=>{
    const sql = `delete from collection where user_id=? and shop_id=?`
    db.query(sql,[req.query.user_id,req.query.shop_id],(err,results)=>{
        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('删除失败！')
        res.send('ok')
    })
}

// 插入购物车
exports.insertCart = (req,res)=>{

    const Ssql = `select * from cart where user_id=? and shop_id=?`
    db.query(Ssql,[req.query.user_id,req.query.shop_id],(err,result)=>{
        if (err) return res.cc(err)
        console.log(result.length);
        if(result.length==0){
            const sql = `insert into cart values(?,?,?)`

            db.query(sql,[req.query.user_id,req.query.shop_id,1],(err,results)=>{
                if (err) return res.cc(err)
        
                // 执行 SQL 语句成功，但是影响行数不等于 1
                if (results.affectedRows !== 1) return res.cc('插入失败！')
        
                res.send('插入ok')
            })
        }else{
            const Usql = `update cart set num = num+1 where user_id=? and shop_id=?`
            db.query(Usql,[req.query.user_id,req.query.shop_id],(err,results)=>{
                if (err) return res.cc(err)

                // 执行 SQL 语句成功，但是影响行数不等于 1
                if (results.affectedRows !== 1) return res.cc('插入失败！')
        
                res.send('更新ok')
            })
        }
       
    })

    
}

// 删除购物车
exports.deleteCart = (req,res)=>{
    const sql = `delete from cart where user_id=? and shop_id=?`

    db.query(sql,[req.query.user_id,req.query.shop_id],(err,results)=>{
        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('插入失败！')
        res.send('ok')
    })
}

// 足迹 
exports.insertfootprint = (req,res)=>{
    let date = moment(new Date()).format('YYYY-MM-DD HH:mm:ss')

    // console.log(req.query)

    let Ssql = `select * from footprint where user_id = ${req.query.user_id} and shop_id = ${req.query.shop_id}`
    
    db.query(Ssql,(err,results)=>{
        if (err) return res.cc(err)
        // console.log(results);
        if(results.length==0){
            const sql =`insert into footprint values(?,?,?)`
            db.query(sql,[req.query.user_id,req.query.shop_id,date],(err1,results)=>{

                if (err1) return res.cc(err1)

                if (results.affectedRows !== 1) return res.cc('插入失败！')


                res.send('插入成功')
            })
        }else{
            const Usql = `update footprint set date = ? where user_id=? and shop_id = ?`
            db.query(Usql,[date,req.query.user_id,req.query.shop_id],(err2,results)=>{
                if (err2) return res.cc(err2)   

                console.log(results);
                if (results.affectedRows !== 1) return res.cc('更新失败！')

                
                res.send('更新成功')

            })
        }
        
    })

    
}

// 查足迹
exports.selectfootprint = (req,res)=>{
    const sql = `select shop_id from footprint where user_id =? order by date desc`
    let shop=[]
    let time

    db.query(sql,req.query.user_id,(err,results)=>{
        if (err) return res.cc(err)
        // console.log(results[1].shop_id);
        for(let i = 0;i<results.length;i++){
            clearTimeout(time)
            const shopSql = `select * from shop where shop_id = ? `
            db.query(shopSql,results[i].shop_id,(err1,result)=>{
                if (err1) return res.cc(err1)

                // console.log(result);
                shop.push(result)
               
            })
            time = setTimeout(()=>{
                res.send(shop)
           },100)
        }
        // res.send(results)
    })
}

// search 页
exports.search = (req,res)=>{
    const sql = `select * from shop where title like "%${req.query.title}%"`

    db.query(sql,(err,results)=>{
        if (err) return res.cc(err)

        res.send(results)
    })
}

// 分类页
exports.selectMore = (req,res)=>{
    const sql = `select * from shop order by type desc`
    db.query(sql,(err,results)=>{
        if (err) return res.cc(err)

        const result = new Map();
        results.map(item => {
        result.set(item.type, [...(result.get(item.type) || ''), item])
        })
        console.log(result);
        let more = Array.from(result)
        more = JSON.stringify(more)
        more = JSON.parse(more)
        res.send(more)
      })
}

// 订单
exports.insertOrder = (req,res)=>{
    let date = moment(new Date()).format('YYYY-MM-DD HH:mm:ss')
    let time
    console.log(req.body);
    const sql = `insert into user_order (user_id,shop_id,num,date,state) VALUES(?,?,?,?,?)`
    let arr = req.body.shop_id.split(',')
    console.log(arr.length);
    if(arr.length == 2){
        console.log(req.body);
        console.log(arr);
        db.query(sql,[req.body.user_id,arr[0],arr[1],date,1],(err,results)=>{
            if (err) return res.cc(err)
            console.log(results);
            res.send({
                status:0,
                id:results.insertId
            })
        })
    }else{
        arr.unshift('0')
        console.log(arr,arr.length);
        let id=[]
        for(let i = 1;i<arr.length-1;i+=2){
            clearTimeout(time)
            db.query(sql,[req.body.user_id,arr[i],arr[i+1],date,1],(err,results)=>{
                if (err) return res.cc(err)
                
                id.push(results.insertId)
            })
            time = setTimeout(()=>{
                res.send({
                    status:0,
                    id
                })
           },100)
        }
    }
    
    // res.send('ok')
}

// 支付后
exports.PayOrer = (req,res)=>{
    const sql = `update user_order set state=?,address_id=? where order_id=?`
    let time
    let arr = req.body.shop_id.split(',')
    console.log(arr.length);
    if(arr.length == 2){
        db.query(sql,[2,req.body.address_id,arr[i]],(err,results)=>{
            if (err) return res.cc(err)

            res.send('支付成功1')
        })
    }else{
        arr.unshift('0')
        console.log(arr,arr.length);
        for(let i = 1;i<arr.length;i+=2){
            clearTimeout(time)
            db.query(sql,[2,req.body.address_id,arr[i]],(err,results)=>{
                if (err) return res.cc(err)
    
            })
            time = setTimeout(()=>{
                res.send('支付成功2')
           },1000)
        }
    }
}

// 查订单
exports.SelectOrder = (req,res)=>{
    const sql = `select * from user_order where user_id = ?`
    db.query(sql,req.query.user_id,(err,results)=>{
        if (err) return res.cc(err)
        // console.log(results);
        const result = new Map();
        results.map(item => {
            result.set(item.state, [...(result.get(item.state) || ''),item])
        })

        let Sresult = Array.from(result)
        Sresult = JSON.stringify(Sresult)
        Sresult = JSON.parse(Sresult)
        // console.log(result);
        // console.log(Sresult);
        res.send(Sresult)
    })
}

// 待支付
exports.ReadyPay = (req,res)=>{
    const sql = `select * from user_order where id = ?`
    let arr = req.query.id.split(',')
    let shop = []
    let time
    
    for(let i = 0;i<arr.length;i++){
        clearTimeout(time)
        db.query(sql,arr[i],(err,results)=>{
            if (err) return res.cc(err)
            console.log(results[0].shop_id);
            shop[i].id = results[0].id
            shop[i].num = results[0].id
            const ShopSql = `select * from shop where shop_id = ?`
            db.query(ShopSql,results[0].shop_id,(err,Shopresults)=>{
                if (err) return res.cc(err)

                shop[i].shop = Shopresults
            })
            // shop[i] = results
        })
        time = setTimeout(()=>{
            res.send(shop)
       },100)
    }
}

