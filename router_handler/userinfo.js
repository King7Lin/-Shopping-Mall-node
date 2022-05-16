// 导入数据库操作模块
const db = require('../db/index')

// 导入处理密码的模块
const bcrypt = require('bcryptjs')

// 获取用户基本信息的处理函数
exports.getUserInfo = (req, res) => {
    const sql = `select id,username,nickname,email,user_pic from user where id=?`
    // console.log(req.user);
    db.query(sql,req.user.id,(err,results)=>{
        // 执行sql失败
        if(err) return req.cc(err)
        // 查询结果为空
        if(results.length !== 1) return res.cc('获取用户信息失败')

        res.send({
            status:0,
            message:'获取用户信息成功',
            data: results[0]
        })
    })
  }

// 更新用户信息函数 

exports.updateUserInfo = (req,res)=>{
    // console.log(req);
    const sql = `update user set ? where id = ?`
    db.query(sql, [req.body, req.body.id], (err, results) => {
        // 执行 SQL 语句失败
        if (err) return res.cc(err)
      
        // 执行 SQL 语句成功，但影响行数不为 1
        if (results.affectedRows !== 1) return res.cc('修改用户基本信息失败！')
      
        // 修改用户信息成功
        return res.cc('修改用户基本信息成功！', 0)
      })
}


// 更新密码处理函数
exports.updatePassword = (req,res)=>{
    const sql =`select * from user where id=?`

    db.query(sql,req.user.id,(err,results)=>{
        if(err) return res.cc(err)

        if(results.length !==1 ) return res.cc('用户不存在')

        const compareResult = bcrypt.compareSync(req.body.oldPwd,results[0].password)

        if(!compareResult) return res.cc('旧密码错误')

        const sql =`update user set password = ? where id=?`
        // 加密新密码
        const newPwd = bcrypt.hashSync(req.body.newPwd,10)
        // 执行sql
        db.query(sql,[newPwd,req.user.id],(err,results)=>{
            if(err) return res.cc(err)

            if(results.length !==1) return res.cc('更新密码错误')

            res.send('更新密码成功')
        })
    })
}

// 更新用户头像
exports.updateAvatar = (req,res)=>{
    db.query(sql, [req.body.avatar, req.user.id], (err, results) => {
        // 执行 SQL 语句失败
        if (err) return res.cc(err)
      
        // 执行 SQL 语句成功，但是影响行数不等于 1
        if (results.affectedRows !== 1) return res.cc('更新头像失败！')
      
        // 更新用户头像成功
        return res.cc('更新头像成功！', 0)
      })
}