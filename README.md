# imaotai
i茅台app 每日自动预约 抢茅台

软件免费,无任何盈利 不要相信任何收费.唯一更新地址https://github.com/insoxin/imaotai/


更新一下:近日很多朋友发邮件咨询新版不能用,旧版客户端提示让升级新版.这个不多说,在发出这个项目没多久就有贵州茅台的企业微信加了我,交流了很多.并且也受邀参观了一下,蹭了几顿饭.吃人嘴软拿人手短,所以后续也没在更新相关(原因之一).有相关学习研究的同学可以参考我博客历史文章已淘汰的算法.

 **再更新一下,我邮箱每周末一打开几百封邮件有点影响使用体验了,,建了微信讨论群,群内没有成品软件. 并且入群费两百,有需求的同学,备注留imaotai + 邮箱,看到发你入群邀请**

![image.png](https://raw.githubusercontent.com/insoxin/API/master/Sponsor.jpg)



# 使用方法
## 1.拉取镜像
```docker
docker pull insoxin/imaotai:latest
```
## 2.创建容器

```docker
docker run -dit --name imaotai -p 1499:1499 -v $PWD/imaotai/config:/go/src/imaotai/config --restart unless-stopped insoxin/imaotai:latest
```

## 3.配置参数

### 配置config.json
下载下载https://github.com/insoxin/imaotai/blob/main/config/config.json 至本地 /root/imaotai/config/config.json

修改本地/root/imaotai/config/config.json参数

User-Agent,Client_Secret,Cookie.必填 

还有经纬度不要默认(APP数据以高德地图为准) 程序会就近预约最近距离店铺
若不想预约太远店铺,可设置GeoKM参数 默认0无限制

其他配置不懂的默认即可

默认每天九点执行(淘宝时间库),预约抢购页面获取到的前四个商品.

### 配置sendNotify.js 通知

下载https://github.com/insoxin/imaotai/blob/main/config/sendNotify.js 至本地/root/imaotai/config/sendNotify.js 

sendNotify.js是通知文件按需修改


```json
{
  "Main": {
    "Title": "insoxin/imaotai",
    "Open": "1,2,3,4",
    "cron": "0 0 9 * * *",
    "Tzone": "http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp",
    "MT-APP-Version": "1.0.0",
    "GeoN": "26.598194",
    "GeoE": "106.707410",
    "GeoKM":"0",
    "sendNotify": "/config/sendNotify.js",
    "oksendNotify": "true"
  },
  "user": {
    "Cookie": "",
    "Origin": "https://h5.moutai519.com.cn",
    "Client_Secret": "aaa",
    "User-Agent": "Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 moutaiapp/1.0.6 device-id/insoxin/imaotai"
  },
  "Notice": "通知中的标题"
}


MD5（2af72f100c356273d46284f6fd1dfc08+数据排序+时间戳）

https://blog.isoyu.com/archives/imaotaimt-device-idmt-r-md5jiajiemi.html

```
## 4.重启 imaotai


## 5.点个star 再进  https://github.com/insoxin/     点follow 关注一下  项目被ban了 我会第一时间更新 新项目




![image.png](https://blog.isoyu.com/wp-content/uploads/2022/04/2022040300072260.jpg)

