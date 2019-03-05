//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    
    userInfo:''
  },
  //事件处理函数

  onShow:function(){
    
  },
  
  onLoad: function () {

    var that = this;
    app.getOpenid().then(function (res) {
      if (res.status == 200) {
      
        app.globalData.openid= wx.getStorageSync('openid')
        
        console.log(app.globalData.openid)
      } else {
        console.log(res.data);
      }
    });
    

    
    



    

  },
  getUserInfo: function(e) {
   
    wx.showLoading({
      title: 'Please Waiting',
    })

    app.globalData.userInfo = e.detail.userInfo
  
    if (e.detail.errMsg =='getUserInfo:ok'){

  
     


      wx.request({
        url: 'https://mercifuldruid.cn/userfirsttime?openid=' + app.globalData.openid,

        success(res) {
          wx.hideLoading()

        
          if (res.data == false) {
           
           
           
           
           
           
           
            wx.showModal({

              showCancel: false,
              title: 'Setting',
              content: 'First time using, please fill the profile',

              success(res) {
                if (res.confirm) {
                  wx.redirectTo({
                    url: '../first/first',
                  })
                }

               
             
             
             
              }
            })



          }

          else {
            if (res.data==true){
            wx.hideLoading()
            wx.switchTab({
              url: '../recommend/recommend',
            })
          }

else{
              wx.hideLoading()


              wx.showModal({

                showCancel: false,
                title: 'Internet Error',
                content: 'Internet Error',

               
              })


}

          }

        }





      })



    
    }
else{

      wx.showToast({
        title: '请允许权限设置',
        icon: 'none'


      }) 
}



  }
})
