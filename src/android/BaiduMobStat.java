package com.baidu.mobstat;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONObject;

import android.text.TextUtils;

public class BaiduMobStat extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) {
        command(action, args, callbackContext);
        return true;
    }

    private void command(String action, JSONArray args, CallbackContext callbackContext) {
        if (TextUtils.isEmpty(action)) {
            callbackContext.error("action invalid, error");
        }

        if ((args == null) || (args.length() == 0)) {
            callbackContext.error("args invalid, error");
        }

        if ("onEvent".equals(action)) {
            String eventId = "";
            String label = "";
            try {
                eventId = args.getString(0);
                label = args.getString(1);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            StatService.onEvent(webView.getContext(), eventId, label);
        } else if ("onEventWithAttributes".equals(action)) {
            String eventId = "";
            String label = "";
            try {
                eventId = args.getString(0);
                label = args.getString(1);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            JSONObject attributeJson = null;
            try {
                attributeJson = args.getJSONObject(2);
            } catch (Exception e) {
                // TODO: handle exception
            }
            Map<String, String> attributes = getConvertedMap(attributeJson);

            StatService.onEvent(webView.getContext(), eventId, label, 1, attributes);
        } else if ("onEventDuration".equals(action)) {
            String eventId = "";
            String label = "";
            long duration = 0;
            try {
                eventId = args.getString(0);
                label = args.getString(1);
                duration = args.getLong(2);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            StatService.onEventDuration(webView.getContext(), eventId, label, duration);
        } else if ("onEventDurationWithAttributes".equals(action)) {
            String eventId = "";
            String label = "";
            long duration = 0;
            try {
                eventId = args.getString(0);
                label = args.getString(1);
                duration = args.getLong(2);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            JSONObject attributeJson = null;
            try {
                attributeJson = args.getJSONObject(3);
            } catch (Exception e) {
                // TODO: handle exception
            }
            Map<String, String> attributes = getConvertedMap(attributeJson);

            StatService.onEventDuration(webView.getContext(), eventId, label, duration, attributes);
        } else if ("onEventStart".equals(action)) {
            String eventId = "";
            String label = "";
            try {
                eventId = args.getString(0);
                label = args.getString(1);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            StatService.onEventStart(webView.getContext(), eventId, label);
        } else if ("onEventEnd".equals(action)) {
            String eventId = "";
            String label = "";
            try {
                eventId = args.getString(0);
                label = args.getString(1);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            StatService.onEventEnd(webView.getContext(), eventId, label);
        } else if ("onEventEndWithAttributes".equals(action)) {
            String eventId = "";
            String label = "";
            try {
                eventId = args.getString(0);
                label = args.getString(1);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(eventId)) {
                callbackContext.error("eventId invalid, error");
                return;
            }

            JSONObject attributeJson = null;
            try {
                attributeJson = args.getJSONObject(2);
            } catch (Exception e) {
                // TODO: handle exception
            }
            Map<String, String> attributes = getConvertedMap(attributeJson);

            StatService.onEventEnd(webView.getContext(), eventId, label, attributes);
        } else if ("onPageStart".equals(action)) {
            String pageName = "";
            try {
                pageName = args.getString(0);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(pageName)) {
                callbackContext.error("pageName invalid, error");
                return;
            }

            StatService.onPageStart(webView.getContext(), pageName);
        } else if ("onPageEnd".equals(action)) {
            String pageName = "";
            try {
                pageName = args.getString(0);
            } catch (Exception e) {
                // TODO: handle exception
            }

            if (TextUtils.isEmpty(pageName)) {
                callbackContext.error("pageName invalid, error");
                return;
            }

            StatService.onPageEnd(webView.getContext(), pageName);
        }

    }

    // 将相关json进行转换为Map<String, String>, 如果类型不匹配等，则转换失败
    private HashMap<String, String> getConvertedMap(JSONObject jsonObject) {
        HashMap<String, String> hashMap = null;
        if (jsonObject == null) {
            return hashMap;
        }

        if (jsonObject.length() != 0) {
            hashMap = new HashMap<String, String>();
        }

        Iterator<String> iterator = jsonObject.keys();
        while (iterator.hasNext()) {
            try {
                String key = iterator.next();
                String value = jsonObject.getString(key);
                hashMap.put(key, value);
            } catch (Exception e) {
                // TODO Auto-generated catch block
            }
        }

        return hashMap;
    }
}
