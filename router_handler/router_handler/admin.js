const db = require('../db/index')

let date = new Date()


// 插入商品
exports.insertShop = (req, res)=>{
    let num
    let time
    const sql = `insert into shop (title,price,img,type,date) VALUES(?,?,?,?,?)`
    // console.log(req);
    db.query(sql,[req.body.title,req.body.price,req.body.img,req.body.type,date],(err,results)=>{
        if (err) return res.cc(err)
      
        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('插入失败！')
        num = results.insertId
        // console.log(num);

        // 插入detail
        const detailSql = `insert into detail VALUES(?,?)`
        let detailImg = req.body.detailImg.split(';')
        // console.log(detailImg);
        for(let i = 0;i<detailImg.length;i++){
            
            db.query(detailSql,[num,detailImg[i]],(err,results)=>{
                if (err) return res.cc(err)
            
            })
            
        }
        

        // 插入规格
        const specificationsSql = `insert into specifications (shop_id,body,choose) values(?,?,?)`
        // 规格？？？？
        let Sbody = req.body.body.split(';')
        let specifications = req.body.choose.split(';')
        // console.log(specifications);
        
        for(let i = 0;i<specifications.length;i++){
            clearTimeout(time)
            db.query(specificationsSql,[num,req.body.body,specifications[i]],(err,results)=>{
                if (err) return res.cc(err)
            //   // 执行 SQL 语句成功，但是影响行数不等于 1
            //     if (results.affectedRows !== 1) return res.cc('插入失败！')
            })
            time = setTimeout(()=>{
                res.send('ok')
           },100)
        }
            // res.send('ok')
    })



}

// 修改商品
exports.updateShop = (req,res)=>{
    const sql = `update shop set title=?,price=?,img=?,type=? where shop_id = ?`
    db.query(sql,[req.body.title,req.body.price,req.body.img,req.body.type,req.body.shop_id],(err,results)=>{
        if (err) return res.cc(err)

        res.send('ok')
    })
}

// 删除商品
exports.deleteshop = (req,res)=>{
    const sql = `DELETE FROM shop where shop_id = ?`

    db.query(sql,req.body.shop_id,(err,results)=>{
        if (err) return res.cc(err)

        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('删除失败！')

        const Dsql = `delete detail,specifications from detail join specifications on detail.shop_id = specifications.shop_id where detail.shop_id=${req.body.shop_id}`
        db.query(Dsql,(err,result)=>{
            if (err) return res.cc(err)
            res.send('ok')
        })
    })
}

// 插入广告
exports.insertAd = (req,res)=>{
    const sql = `insert into advertisement values(?,?)`
    let date = new Date()
    db.query(sql,[date,req.body.img],(err,results)=>{
        if (err) return res.cc(err)
        // 执行 SQL 语句成功，但是影响行数不等于 1
        // if(results.length !== 1) return res.cc('获取数据失败')

        res.send('ok')
    })
}

