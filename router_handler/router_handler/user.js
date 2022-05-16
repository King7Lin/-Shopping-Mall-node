// 导入数据库操作模块
const db = require('../db/index')

// 导入bcrypt这个包
const bcrypt = require('bcryptjs')

// 导入生成token的包
const jwt = require('jsonwebtoken')
const config = require('../config')

// 注册用户的处理函数
exports.regUser = (req,res)=>{
    const userinfo = req.body
    // console.log(userinfo);
    // 对表单中的数据进行合法校验
    if(!userinfo.username || !userinfo.password){
        return res.cc('用户名或密码不合法')
    }
    // 定义sql语句
    const sqlStr = `select * from user where username=?`
    db.query(sqlStr,userinfo.username,(err,results)=>{
        if(err) return res.cc(err)

        if(results.length>0){
            return res.cc('用户名被占用')
        }
        // TODO : 用户名可用
        // 调用吧crypt.hashSync()对密码加密
        userinfo.password = bcrypt.hashSync(userinfo.password)
        // 定义插入新用户

        const sql = `insert into user set ?`

        db.query(sql,{username:userinfo.username,password:userinfo.password},(err,results)=>{
            
            if(err) return res.cc(err.message)
            
            if (results.affectedRows !==1) return res.cc('新用户注册失败')
            
            res.cc('注册成功',0)
        })
    })

}

// 登录的处理函数
exports.login = (req,res)=>{
    const userinfo = req.body

    const sql = `select * from user where username=?`

    db.query(sql,userinfo.username,(err,results)=>{
        if(err) return res.cc(err)
        // 获取到的数据条数不等于1
        if(results.length !==1) return res.cc('登陆失败')

        // 验证密码
        const compareResult = bcrypt.compareSync(userinfo.password,results[0].password)
        if(!compareResult) return res.cc('登陆失败')

        const user = {...results[0] , password:'' , user_pic:''}

        // 对用户的信息加密生成token
        const tokenStr = jwt.sign(user,config.jwtSecreKey,{expiresIn: config.expiresIn})
        
        res.send({
            status:0,
            message:'登陆成功',
            token:'Bearer ' + tokenStr
        })
    })

    
}

