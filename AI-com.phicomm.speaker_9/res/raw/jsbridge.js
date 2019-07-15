;(function () {
    if (window.WebViewJavascriptBridge) {
        return
    }

    var messageHandlers = {}
    var responseCallbacks = {}
    var uniqueId = 1

    function init(messageHandler) {
        if (WebViewJavascriptBridge._messageHandler) {
            throw new Error('WebViewJavascriptBridge.init called twice')
        }
        WebViewJavascriptBridge._messageHandler = messageHandler
    }

    function registerHandler(handlerName, handler) {
        messageHandlers[handlerName] = handler
    }

    function callHandler(handlerName, data, responseCallback) {
        _doSend({handlerName: handlerName, data: data}, responseCallback)
    }

    function send(data, responseCallback) {
        _doSend({data: data}, responseCallback)
    }

    function _doSend(message, responseCallback) {
        if (responseCallback) {
            var callbackId = 'cb_' + (uniqueId++) + '_' + new Date().getTime()
            responseCallbacks[callbackId] = responseCallback
            message['callbackId'] = callbackId
        }
        console.log("sending:" + JSON.stringify(message));
        //JS调原生
        JavaBridge._handleMessageFromJs(message.data || null, message.responseId || null,
            message.responseData || null, message.callbackId || null, message.handlerName || null);
    }

    //原生调JS
    function _handleMessageFromJava(messageJSON) {
        _dispatchMessageFromJava(messageJSON)
    }

    function _dispatchMessageFromJava(messageJSON) {
    console.log("showAndroidData11: " + messageJSON)
        var message = JSON.parse(messageJSON)
        var messageHandler

        if (message.responseId) {
            var responseCallback = responseCallbacks[message.responseId]
            if (!responseCallback) {
                return;
            }
            responseCallback(message.responseData)
            delete responseCallbacks[message.responseId]
        } else {
            var responseCallback
            if (message.callbackId) {
                var callbackResponseId = message.callbackId
                responseCallback = function (responseData) {
                    _doSend({responseId: callbackResponseId, responseData: responseData})
                }
            }

            var handler = WebViewJavascriptBridge._messageHandler
            if (message.handlerName) {
                handler = messageHandlers[message.handlerName]
            }
            console.log("_dispatchMessageFromJava: " + handler)
            try {
                handler(message.data, responseCallback)
                console.log("showAndroidData22: " + message.handlerName + " * " + message.data)
            } catch (exception) {
                if (typeof console != 'undefined') {
                    console.log("WebViewJavascriptBridge: WARNING: javascript handler threw.", message, exception)
                }
            }
        }
    }

    //export
    window.WebViewJavascriptBridge = {
        registerHandler: registerHandler,
        callHandler: callHandler,
        _handleMessageFromJava: _handleMessageFromJava
    }

    //dispatch event
    var doc = document;
    var readyEvent = doc.createEvent('Events');
    readyEvent.initEvent('WebViewJavascriptBridgeReady');
    readyEvent.bridge = WebViewJavascriptBridge;
    doc.dispatchEvent(readyEvent);
})();