//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    userinfo:'',
    grade:'',
    major:''
  },
  //事件处理函数

  onShow:function(){
  
  },
  
  onLoad: function () {
   this.setData({
userinfo:app.globalData.userInfo,
grade: app.globalData.grade,
major: app.globalData.major
   })
  }
})
