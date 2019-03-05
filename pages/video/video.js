const app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
name:'',
url:'',
image:'',
click1: 'false',
    click2: 'false',
    text:'',
    comment:[],
    none:"false",
    count:0,
    share: 'false'
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
 
    var that = this
    if (options.share == 'true') {
      app.globalData.name = options.name
      app.globalData.image = options.image
      app.globalData.url = options.url
      app.globalData.openid = 'oFPA65BTgQ-MRSdCKjx5FUr4r4nU'
      this.setData({

        share:'true'
      })
    }
   
    wx.request({
      url: 'https://mercifuldruid.cn/loadfunction?type=video' + '&name=' + app.globalData.name + '&openid=' + app.globalData.openid,

      success(res) {
        var data = res.data.trim().split("  ");
     
        that.setData({
          text: '',
          name: app.globalData.name,

          url: app.globalData.url,
          image: app.globalData.image
        })

        if (data[0] == 'true') {
          that.setData({
            click1: 'true'
          })
        }
        else {

          that.setData({
            click1: 'false'
          })
        }

        if (data[1] == 'true') {
          that.setData({
            click2: 'true'
          })
        }
        else {

          that.setData({
            click2: 'false'
          })
        }
        wx.request({
          url: 'https://mercifuldruid.cn/loadcomment?type=video' + '&name=' + app.globalData.name,

          success(res) {
           
            var bind = []
            var a = res.data.trim().split("\n")
            if (a == "") {
              that.setData({

                none: "true"
              })
           
            
          


}

           

else{
      

 
      
      
       for(var i=0;i<a.length;++i){
       var b=a[i].split("  ")
          bind.push([b[0], b[1], b[2],b[3], b[4]])

        }
          
          that.setData({
            none: "false",
            comment:bind
          })
          
       
          
          }


            wx.request({
              url: 'https://mercifuldruid.cn/loadcount?type=video' + '&name=' + app.globalData.name,
              success(res) {

                that.setData({

                  count: res.data
                })

              }
            })

          






          }
        })
        
      }





    })
 
 
 
 
 



 

  },
input:function(e){
this.data.text=e.detail.value
  console.log(this.data.text)
},
image1:function(){
var that=this
if(this.data.click1=='false'){
this.setData({
click1:'true'

})
}
else{
  this.setData({
    click1: 'false'

  }) 
}
  wx.showLoading({
    title: 'Waiting',
  })


  wx.request({
    url: 'https://mercifuldruid.cn/function?type=video&mode=1&good=' + this.data.click1 + '&save=' + this.data.click2 + '&name=' + this.data.name + '&openid=' + app.globalData.openid,

    success(res) {

wx.hideLoading()
      var options = ''
      getCurrentPages()[getCurrentPages().length - 1].onLoad(options)

    }
      })









    





  







} , 

  image2: function () {
var that=this
    if (this.data.click2 == 'true') {
      this.setData({
        click2: 'false'

      })
    }
    else {
      this.setData({
        click2: 'true'

      })
    }
    wx.showLoading({
      title: 'Waiting',
    })
    wx.request({
      url: 'https://mercifuldruid.cn/function?type=video&mode=2&save=' + this.data.click2 + '&good=' + this.data.click1+ '&name=' + this.data.name + '&openid=' + app.globalData.openid,

      success(res) {
wx.hideLoading()
        var options = ''
        getCurrentPages()[getCurrentPages().length - 1].onLoad(options)

          }





        })









      




    

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
  back: function () {
    wx.redirectTo({
      url: '../index/index',
    })
  },
  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function (res) {
    var that = this
    if (res.from === 'button') {
      console.log("来自页面内转发按钮");
      console.log(res.target);
    }
    else {
      console.log("来自右上角转发菜单")
    }
    return {
      title: app.globalData.name,
      path: '/pages/video/video?share=true&name=' + app.globalData.name + '&url=' + app.globalData.url + '&image=' + app.globalData.image,

      success: (res) => {
        console.log("转发成功", res);
      },
      fail: (res) => {
        console.log("转发失败", res);
      }
    }
  },
  
  send:function(){
    var that=this
    wx.showLoading({
      title: 'Waiting',
    })
    wx.request({
      url: 'https://mercifuldruid.cn/comment?type=video&name=' + this.data.name + '&openid=' + app.globalData.openid+ '&text=' + this.data.text,

      success(res) {
wx.hideLoading()
var options=''
        getCurrentPages()[getCurrentPages().length - 1].onLoad(options)

      



  }
})

  }
})