const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    video: [
    
     ],

    Book: [],

cur:0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onShow: function (options) {
  

  var video2=[]
  var book2=[]
  var that=this
  
var major=''
var grade=''

 



    wx.request({
      url: 'https://mercifuldruid.cn/loadprofile?a=' + app.globalData.openid,

      success(res) {
        major = res.data.trim().split("  ")[1]
        grade = res.data.trim().split("  ")[0]
        wx.request({
          url: 'https://mercifuldruid.cn/loadrecommend?type=book&major=' + major + '&grade=' + grade,

          success(res) {


            var size = res.data.trim().split("\n").length



            for (var i = 0; i < size; i++) {
              var data = res.data.trim().split("\n")[i]

              book2.push([data.split("  ")[0].trim(), data.split("  ")[1].trim(), data.split("  ")[2].trim()])



            }
            console.log(book2)

            that.setData({
cur:0,
              Book: book2
            })


            wx.request({
              url: 'https://mercifuldruid.cn/loadrecommend?type=video&major=' + major + '&grade=' + grade,

              success(res) {


                var size = res.data.trim().split("\n").length



                for (var i = 0; i < size; i++) {
                  var data = res.data.trim().split("\n")[i]

                  video2.push([data.split("  ")[0], data.split("  ")[1], data.split("  ")[2]])



                }
                

                that.setData({

                  video:       video2
                })








              }








            })





          }








        })





      }
    })




















 
   
 
 
 
 
  },

  image: function (e) {

    wx.navigateTo({
      url: '../video/video'

    })

    app.globalData.name = this.data.video[e.target.id][1]
    app.globalData.image = this.data.video[e.target.id][0]
    app.globalData.url = this.data.video[e.target.id][2]
  },

  book: function (e) {

    wx.navigateTo({
      url: '../Book/Book'

    })
    app.globalData.name = this.data.Book[e.target.id][1]
    app.globalData.image = this.data.Book[e.target.id][0]
    app.globalData.url = this.data.Book[e.target.id][2]
  },
 

  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */

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