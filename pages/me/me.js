const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
userinfo:''
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

   
this.setData({

  userinfo: app.globalData.userInfo
})

   



  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },
exit:function(){
wx.redirectTo({
  url: '../index/index',
})
},
  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },
  profile:function() {

    wx.showLoading({
      title: 'Please Waiting',
    })
    wx.request({
      url: 'https://mercifuldruid.cn/loadprofile?a=' + app.globalData.openid,

      success(res) {
wx.hideLoading()
        var data = res.data

        app.globalData.grade = data.trim().split("  ")[0]
        app.globalData.major = data.trim().split("  ")[1]
        wx.navigateTo({
          url: '../profile/profile',
        })

      }
    })





  },




save:function(){
  wx.showLoading({
    title: '请等待',
  })
  
       wx.request({
    url: 'https://mercifuldruid.cn/loadsave?type=video&openid=' + app.globalData.openid,

    success(res) {
      wx.hideLoading()
      var data = res.data.trim().split("\n")
      if (data == "") {
        app.globalData.none1 = 'true'
          
      }
      app.globalData.savevideo=[]
      app.globalData.savebook = []
     for(var i=0;i<data.length;i++){

       app.globalData.savevideo.push(data[i])
     }
      wx.request({
        url: 'https://mercifuldruid.cn/loadsave?type=book&openid=' + app.globalData.openid,

        success(res) {
          wx.hideLoading()
          var data = res.data.trim().split("\n")
          if(data==""){
            app.globalData.none2 = 'true'
            
          }
          app.globalData.savebook = []
          for (var i = 0; i < data.length; i++) {

            app.globalData.savebook.push(data[i])
          }
       

          wx.navigateTo({
            url: '../save/save',
          })

        }
      })

    }
  })
      
   

    }
  












 
})