var exec = require("cordova/exec");


var errorHandle = function(error) {
	console.log(error);
}


module.exports = {
    //print something to the native console
    logEvent: function(event, label) {
        exec(null, errorHandle, "BaiduMobStat", "logEvent", [event, label]);
    },

    logEventWithDurationTime: function(event, label, duration) {
        exec(null, errorHandle, "BaiduMobStat", "logEventWithDurationTime", [event, label, duration]);
    },

    eventStart: function(event, label) {
        exec(null, errorHandle, "BaiduMobStat", "eventStart", [event, label]);
    },

    eventEnd: function(event, label) {
        exec(null, errorHandle, "BaiduMobStat", "eventEnd", [event, label]);
    },

    pageviewStartWithName: function(page) {
        exec(null, errorHandle, "BaiduMobStat", "pageviewStartWithName", [page]);
    },

    pageviewEndWithName: function(page) {
        exec(null, errorHandle, "BaiduMobStat", "pageviewEndWithName", [page]);
    }
}
