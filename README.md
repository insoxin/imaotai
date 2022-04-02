# imaotai
i茅台app 每日自动预约
https://github.com/insoxin/imaotai/



# 使用方法
## 1.
```docker
docker pull insoxin/imaotai:latest
```
## 2.

```docker
docker run -dit --name imaotai -p 1499:1499 -v $PWD/imaotai/config:/imaotai/config --restart unless-stopped insoxin/imaotai:latest
```

## 3.修改/imaotai/config/config.json和/imaotai/config/sendNotify.js 并重启
```json
{
  "Main": {
    "Title": "insoxin/imaotai",
    "Open": "1,2,3,4",
    "cron": "0 0 9 ? * *",
    "Tzone": "http://api.m.taobao.com/rest/api3.do?api=mtop.common.getTimestamp",
    "MT-APP-Version": "1.0.0",
    "GeoN": "26.598194",
    "GeoE": "106.707410",
    "sendNotify": "/config/sendNotify.js",
    "oksendNotify": "true"
  },
  "user": {
    "Cookie": "",
    "Origin": "https://h5.moutai519.com.cn",
    "Client_Secret": "aaa",
    "User-Agent": "Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 moutaiapp/1.0.6 device-id/insoxin/imaotai"
  },
  "Notice": "如果需要公告,请在此配置项里面些内容。不需要公告请此配置项留空"
}

```
