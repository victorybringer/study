const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
video:[],
book:[],
none1:"false",
none2:"false",
type:'video'
  },
change:function(e){
 this.setData({
   type: e.detail.currentItemId
 })
},
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
var video2=[]
    for (var i = 0; i < app.globalData.savevideo.length; i++) {

      video2.push([app.globalData.savevideo[i].split("  ")[0], app.globalData.savevideo[i].split("  ")[1], app.globalData.savevideo[i].split("  ")[2]])

   

    }

    var book2 = []
    for (var i = 0; i < app.globalData.savebook.length; i++) {

      book2.push([app.globalData.savebook[i].split("  ")[0], app.globalData.savebook[i].split("  ")[1], app.globalData.savebook[i].split("  ")[2]])



    }
this.setData({
  video:video2,
  book:book2,
  none1:app.globalData.none1,
   none2: app.globalData.none2
})
    console.log(this.data.book)
  
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

  },
  image:function(e){

    wx.navigateTo({
      url: '../video/video'

    })

    app.globalData.name = this.data.video[e.target.id][1]
    app.globalData.image = this.data.video[e.target.id][0]
    app.globalData.url = this.data.video[e.target.id][2]
  },
  image2: function (e) {

    wx.navigateTo({
      url: '../Book/Book'

    })
    app.globalData.name = this.data.book[e.target.id][1]
    app.globalData.image = this.data.book[e.target.id][0]
    app.globalData.url = this.data.book[e.target.id][2]
  }

})