const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    index1: 0,
    index2:0,
    array1: ['Freshman', 'Sophomore', 'Junior',  'Senior'],
    array2: ['Computer Science', 'Economy', 'Philosophy'],

  }, 
  
  bindPickerChange1: function (e) {

    this.setData({
      index1: e.detail.value,





    })
  },
  bindPickerChange2: function (e) {

    this.setData({
      index2: e.detail.value,





    })
  },
confirm:function(){
  var that=this
  wx.request({
    url: 'https://mercifuldruid.cn/profile?a=' + that.data.array1[that.data.index1] + '&b=' + that.data.array2[that.data.index2] + '&c=' + app.globalData.openid + '&d=' + app.globalData.userInfo.avatarUrl + '&e=' + app.globalData.userInfo.nickName ,
    
    
    
    
   

    success(res) {
      console.log(that.data.array1[that.data.index1]),
      wx.showModal({
        
        showCancel: false,
        title: 'Setting',
        content: 'Successed',

        success(res) {
          if (res.confirm) {
            wx.switchTab({
            
          
              url: '../recommend/recommend',
            })
          }
        }
      })
    
    
    
    
    
    }
  })


},

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
 
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

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})