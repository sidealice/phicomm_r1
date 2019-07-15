.class final Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;
.super Ljava/lang/Object;
.source "HttpReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/netmodule/HttpReportUtils;->httpReportASRLog(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lcom/unisound/ant/device/service/BaseRequest;

.field final synthetic val$udid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unisound/ant/device/service/BaseRequest;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;->val$udid:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;->val$data:Lcom/unisound/ant/device/service/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 37
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 38
    .local v5, "jsonHead":Lcom/google/gson/JsonObject;
    const-string v9, "udid"

    iget-object v10, p0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;->val$udid:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v9, "appKey"

    sget-object v10, Lcom/unisound/vui/util/ExoConstants;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 42
    .local v4, "jsonData":Lcom/google/gson/JsonObject;
    const-string v9, "head"

    invoke-virtual {v4, v9, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 43
    const-string v9, "body"

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    iget-object v11, p0, Lcom/unisound/ant/device/netmodule/HttpReportUtils$1;->val$data:Lcom/unisound/ant/device/service/BaseRequest;

    invoke-virtual {v10, v11}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 44
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 45
    .local v3, "json":Lcom/google/gson/JsonObject;
    const-string v9, "data"

    invoke-virtual {v3, v9, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 46
    const-string v9, "signature"

    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/unisound/vui/util/StringUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getAppServerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "rest/v1/api/terminal_syslog"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpReportASRLog, url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", params = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/unisound/vui/util/HttpUtils;->getInstance()Lcom/unisound/vui/util/HttpUtils;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/unisound/vui/util/HttpUtils;->postSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v7

    .line 51
    .local v7, "response":Lokhttp3/Response;
    invoke-static {v7}, Lcom/unisound/vui/util/HttpUtils;->isResponseCorrect(Lokhttp3/Response;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 54
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "errorCode"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "code":Ljava/lang/String;
    const-string v9, "1200000"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 56
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "httpReportASRLog success!"

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v0    # "code":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 58
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpReportASRLog failure, error code = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", message = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "errorMsg"

    .line 61
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "code":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpReportASRLog error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 66
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpReportASRLog error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-static {}, Lcom/unisound/ant/device/netmodule/HttpReportUtils;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpReportASRLog failure, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v7, :cond_2

    const-string v9, "response is null!"

    .line 70
    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {v10, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " response code = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 70
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method
