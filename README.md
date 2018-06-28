# 百度移动统计Cordova插件

## 怎么安装

`cordova plugin add https://github.com/waitaction/cordova-plugin-baidumobstat.git --variable APPKEY=YOURAPPKEY`

例如
`cordova plugin add https://github.com/waitaction/cordova-plugin-baidumobstat.git --variable APPKEY=sa12ew1`

## 怎么使用

```javascript

    BaiduMobStat.onEvent('event1', '事件一'); //不指定事件一发生次数，默认为1

    BaiduMobStat.onEventDuration('event2', '事件二', 1000); //指定事件二发生次数

    BaiduMobStat.onEventStart('event3', '事件三'); //事件三开始

    BaiduMobStat.onEventEnd('event3', '事件三'); //事件三结束

    BaiduMobStat.onEventWithAttributes('event4', '事件四', {'分类':'分类一'});

    BaiduMobStat.onEventDurationWithAttributes('event5', '事件五', 1000, {'分类':'分类一'});

    BaiduMobStat.onEventStart('event6', '事件六');

    BaiduMobStat.onEventEndWithAttributes('event6', '事件六', {'分类':'分类一'});

    BaiduMobStat.onPageStart('页面一');

    BaiduMobStat.onPageEnd('页面一');

```
