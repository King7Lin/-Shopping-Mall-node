// 导入express
const express = require('express')
// 创建实例
const app = express()
const joi = require('joi')

// 导入并配置cors中间件
const cors = require('cors')

app.use(cors())

// 配置解析表单数据的中间件
app.use(express.urlencoded({ extended: false }))

app.use((req,res,next)=>{
    res.cc = (err,status=1)=>{
        res.send({
            status,
            message:err instanceof Error? err.message:err
        })
    }

    next()
})

// 在路由之前配置解析token 的中间件
 const expressJwt = require('express-jwt')
 const config = require('./config')

//  app.use(expressJwt({secret:config.jwtSecreKey}).unless({path:[/^\/all\//]}))


//  导入并使用用户路由模块
const userRouter = require('./router/user')

app.use('/api',userRouter)

// 导入并使用用户信息路由模块
const userinfoRouter = require('./router/userinfo')
app.use('/my', userinfoRouter)

// 查询模块
const allRouter = require('./router/all_user')
app.use('/all',allRouter)

// 增加或修改路由模块
const adminRouter = require('./router/admin')
app.use('/admin',adminRouter)


// 定义错误级别的中间件
app.use(function (err, req, res, next) {
    // 数据验证失败
    if (err instanceof joi.ValidationError) return res.cc(err)

    if(err.name === 'UnauthorizedError') return res.cc('身份认证失败')
    // 未知错误
    res.cc(err)
  })

// 启动服务器
app.listen(3007,()=>{
    console.log('api server running at http://127.0.0.1:3007');
})