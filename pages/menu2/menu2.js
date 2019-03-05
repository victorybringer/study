const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {

    video: [],
    book: [],
    allvideo:[],
    allbook:[],
    currentbook:[],
    currentvideo: [],
    cur:0,
    none1: "false",
    none2: "false",
    array1:['Book','Video','Favorite'],
    color1: ['white', '#CD0000', '#CD0000'],
    array2: ['Computer Science', 'Economy', 'Philosophy'],

    array3: ['Freshman', 'Sophomore', 'Junior', 'Senior'],
    color2: ['white', '#CD0000', '#CD0000'],
    color3: ['white', '#CD0000', '#CD0000', '#CD0000'],
    farray: ['Video','Book' ],
    fcolor: ['white', '#CD0000']
  },
bt:function(e){
  var color=[]
  for (var i = 0; i < this.data.array1.length;++i){
  color.push('#CD0000')
}
color[e.target.id]='white'

this.setData({
  color1:color,
     cur: 0
})

  

},
  bt2: function (e) {
    var color = []
    for (var i = 0; i < this.data.array2.length; ++i) {
      color.push('#CD0000')
    }
    color[e.target.id] = 'white'
    this.setData({
      color2: color
    })
var currentbook=[];

    var currentvideo = [];
    for (var i = 0; i < this.data.array2.length; ++i) {
     
      for (var j = 0; j < this.data.array3.length; ++j) {
      

        for (var k = 0; k < this.data.allbook.length; ++k) {

          if (this.data.allbook[k][3] == this.data.array2[i] && this.data.allbook[k][4] == this.data.array3[j] && this.data.color2[i] == 'white' && this.data.color3[j] == 'white'){
            currentbook.push([this.data.allbook[k][0], this.data.allbook[k][1], this.data.allbook[k][2], this.data.allbook[k][3], this.data.allbook[k][4]])
          }

        }

      }

    }
    for (var i = 0; i < this.data.array2.length; ++i) {

      for (var j = 0; j < this.data.array3.length; ++j) {


        for (var k = 0; k < this.data.allvideo.length; ++k) {

          if (this.data.allvideo[k][3] == this.data.array2[i] && this.data.allvideo[k][4] == this.data.array3[j] && this.data.color2[i] == 'white' && this.data.color3[j] == 'white') {
            currentvideo.push([this.data.allvideo[k][0], this.data.allvideo[k][1], this.data.allvideo[k][2], this.data.allvideo[k][3], this.data.allvideo[k][4]])
          }

        }

      }

    }

this.setData({
  currentbook: currentbook,
  currentvideo: currentvideo,
   cur: 0
})



  },
  bt3: function (e) {
    var color = []
    for (var i = 0; i < this.data.array3.length; ++i) {
      color.push('#CD0000')
    }
    color[e.target.id] = 'white'
    this.setData({
      color3: color
    })
    var currentbook = [];

    var currentvideo = [];
    for (var i = 0; i < this.data.array2.length; ++i) {

      for (var j = 0; j < this.data.array3.length; ++j) {


        for (var k = 0; k < this.data.allbook.length; ++k) {

          if (this.data.allbook[k][3] == this.data.array2[i] && this.data.allbook[k][4] == this.data.array3[j] && this.data.color2[i] == 'white' && this.data.color3[j] == 'white') {
            currentbook.push([this.data.allbook[k][0], this.data.allbook[k][1], this.data.allbook[k][2], this.data.allbook[k][3], this.data.allbook[k][4]])
          }

        }

      }

    }
    for (var i = 0; i < this.data.array2.length; ++i) {

      for (var j = 0; j < this.data.array3.length; ++j) {


        for (var k = 0; k < this.data.allvideo.length; ++k) {

          if (this.data.allvideo[k][3] == this.data.array2[i] && this.data.allvideo[k][4] == this.data.array3[j] && this.data.color2[i] == 'white' && this.data.color3[j] == 'white') {
            currentvideo.push([this.data.allvideo[k][0], this.data.allvideo[k][1], this.data.allvideo[k][2], this.data.allvideo[k][3], this.data.allvideo[k][4]])
          }

        }

      }

    }

    this.setData({
      currentbook: currentbook,
      currentvideo: currentvideo,
      cur:0
    })


  },
  fbt: function (e) {
    var color = []
    for (var i = 0; i < this.data.farray.length; ++i) {
      color.push('#CD0000')
    }
    color[e.target.id] = 'white'
    this.setData({
      fcolor: color
    })
  },



  allimage: function (e) {

    wx.navigateTo({
      url: '../video/video'

    })

    app.globalData.name = this.data.currentvideo[e.target.id][1]
    app.globalData.image = this.data.currentvideo[e.target.id][0]
    app.globalData.url = this.data.currentvideo[e.target.id][2]
  },
  allimage2: function (e) {
    console.log(e.target.id)
    wx.navigateTo({
      url: '../Book/Book'

    })

    app.globalData.name = this.data.currentbook[e.target.id][1]
    app.globalData.image = this.data.currentbook[e.target.id][0]
    app.globalData.url = this.data.currentbook[e.target.id][2]
  },

  image: function (e) {

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
  },
 
  fbt1: function () {
    this.setData({

  

      fcolor1: 'white',
      fcolor2: '#CD0000',
    })
  },
  fbt2: function () {
    this.setData({


      fcolor1: '#CD0000',
      fcolor2: 'white',
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onShow: function (options) {
    var that = this

    wx.request({
      url: 'https://mercifuldruid.cn/loadbook',

      success(res) {
        var data = res.data.trim().split("\n")

        var allbook2 = []
      
      
        for (var i = 0; i < data.length; ++i) {

          allbook2.push([data[i].trim().split("  ")[0], data[i].trim().split("  ")[1], data[i].trim().split("  ")[2], data[i].trim().split("  ")[3], data[i].trim().split("  ")[4]])

     

        }
      
        that.setData({
          allbook: allbook2,
   


        })
        console.log(that.data.currentbook)
        wx.request({
          url: 'https://mercifuldruid.cn/loadvideo',

          success(res) {
            var data = res.data.trim().split("\n")

            var allvideo = []
           
            for (var i = 0; i < data.length; ++i) {

              allvideo.push([data[i].trim().split("  ")[0], data[i].trim().split("  ")[1], data[i].trim().split("  ")[2], data[i].trim().split("  ")[3], data[i].trim().split("  ")[4]])
              
            }
            that.setData({
              allvideo: allvideo,

            })
            var currentbook = [];

            var currentvideo = [];
            for (var i = 0; i < that.data.array2.length; ++i) {

              for (var j = 0; j < that.data.array3.length; ++j) {


                for (var k = 0; k < that.data.allbook.length; ++k) {

                  if (that.data.allbook[k][3] == that.data.array2[i] && that.data.allbook[k][4] == that.data.array3[j] && that.data.color2[i] == 'white' && that.data.color3[j] == 'white') {
                    currentbook.push([that.data.allbook[k][0], that.data.allbook[k][1], that.data.allbook[k][2], that.data.allbook[k][3], that.data.allbook[k][4]])
                  }

                }

              }

            }
            for (var i = 0; i < that.data.array2.length; ++i) {

              for (var j = 0; j < that.data.array3.length; ++j) {


                for (var k = 0; k < that.data.allvideo.length; ++k) {

                  if (that.data.allvideo[k][3] == that.data.array2[i] && that.data.allvideo[k][4] == that.data.array3[j] && that.data.color2[i] == 'white' && that.data.color3[j] == 'white') {
                    currentvideo.push([that.data.allvideo[k][0], that.data.allvideo[k][1], that.data.allvideo[k][2], that.data.allvideo[k][3], that.data.allvideo[k][4]])
                  }

                }

              }

            }

            that.setData({
              currentbook: currentbook,
              currentvideo: currentvideo
            })
     console.log(that.data.allvideo)
            wx.request({
              url: 'https://mercifuldruid.cn/loadsave?type=video&openid=' + app.globalData.openid,

              success(res) {
                var data = res.data.trim().split("\n")
                if (data == "") {
                  that.setData({

                    none1: 'true'
                  })

                }
                else {
                  var video2 = []
                  for (var i = 0; i < data.length; i++) {

                    video2.push([data[i].split("  ")[0], data[i].split("  ")[1], data[i].split("  ")[2]])



                  }

                  that.setData({
                    none1: 'false',
                    video: video2

                  })
                }

                wx.request({
                  url: 'https://mercifuldruid.cn/loadsave?type=book&openid=' + app.globalData.openid,

                  success(res) {
                    var data = res.data.trim().split("\n")
                    if (data == "") {
                      that.setData({

                        none2: 'true'
                      })

                    }
                    else {
                      var book2 = []
                      for (var i = 0; i < data.length; i++) {

                        book2.push([data[i].split("  ")[0].trim(), data[i].split("  ")[1].trim(), data[i].split("  ")[2].trim()])



                      }

                      that.setData({
                        none2: 'false',
                        book: book2

                      })
                    }



                  }
                })


              }
            })


          }

        })

      }

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
  onLoad: function () {
  




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
 



})