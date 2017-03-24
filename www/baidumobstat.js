var exec = require("cordova/exec");


var errorHandle = function(error) {
	console.log(error);
}


module.exports = {
    //print something to the native console
    onEvent: function(eventId, eventLabel) {
        exec(null, errorHandle, "BaiduMobStat", "onEvent", [eventId, eventLabel]);
    },

    onEventWithAttributes: function(eventId, eventLabel, attributes) {
        exec(null, errorHandle, "BaiduMobStat", "onEventWithAttributes", [eventId, eventLabel, attributes]);
    },

    onEventDuration: function(eventId, eventLabel, duration) {
        exec(null, errorHandle, "BaiduMobStat", "onEventDuration", [eventId, eventLabel, duration]);
    },

    onEventDurationWithAttributes: function(eventId, eventLabel, duration, attributes) {
        exec(null, errorHandle, "BaiduMobStat", "onEventDurationWithAttributes", [eventId, eventLabel, duration, attributes]);
    },

    onEventStart: function(eventId, eventLabel) {
        exec(null, errorHandle, "BaiduMobStat", "onEventStart", [eventId, eventLabel]);
    },

    onEventEnd: function(eventId, eventLabel) {
        exec(null, errorHandle, "BaiduMobStat", "onEventEnd", [eventId, eventLabel]);
    },

    onEventEndWithAttributes: function(eventId, eventLabel, attributes) {
        exec(null, errorHandle, "BaiduMobStat", "onEventEndWithAttributes", [eventId, eventLabel, attributes]);
    },

    onPageStart: function(page) {
        exec(null, errorHandle, "BaiduMobStat", "onPageStart", [page]);
    },

    onPageEnd: function(page) {
        exec(null, errorHandle, "BaiduMobStat", "onPageEnd", [page]);
    }
}
