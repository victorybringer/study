const app=getApp()
App({
  onLaunch: function () {
    // 展示本地存储能力
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs)

    // 登录
    wx.login({
     
   
    })
    // 获取用户信息
    wx.getSetting({
      success: res => {
        if (res.authSetting['scope.userInfo']) {
          // 已经授权，可以直接调用 getUserInfo 获取头像昵称，不会弹框
          wx.getUserInfo({
            success: res => {
              // 可以将 res 发送给后台解码出 unionId
              this.globalData.userInfo = res.userInfo

              // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
              // 所以此处加入 callback 以防止这种情况
              if (this.userInfoReadyCallback) {
                this.userInfoReadyCallback(res)
              }
            }
          })
        }
      }
    })
  },
  getOpenid: function () {
    var that = this;
    return new Promise(function (resolve, reject) {
      wx.login({
        success: function (res) {
          //code 获取用户信息的凭证
          if (res.code) {
            //请求获取用户openid
            wx.request({
              url: "https://mercifuldruid.cn/openid",
              data: { "code": res.code },
              method: 'GET',
              header: {
                'Content-type': 'application/json'
              },
              success: function (res) {
                wx.setStorageSync('openid', res.data.openid);//存储openid
                var res = {
                  status: 200,
                  data: res.data.openid
                }
                resolve(res);
              }
            });
          } else {
            console.log('获取用户登录态失败！' + res.errMsg)
            reject('error');
          }
        }
      })
    });
  },

  globalData: {
    userInfo: null,
    openid:'',
    grade:'',
    major:'',
  
      url:'',
      image:'',
      name:'',

  }
})