.class public Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceBounded(Ljava/lang/String;)Z
    .locals 14
    .param p0, "udid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v3, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;

    const-string v1, "1"

    const-string v2, "10"

    invoke-direct {v3, v1, v2, p0}, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v3, "pageInfo":Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
    new-instance v4, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;

    const/16 v1, 0x9

    invoke-direct {v4, v1}, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;-><init>(I)V

    .line 33
    .local v4, "clientInfo":Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
    new-instance v0, Lcom/unisound/ant/device/bean/RequestInfo;

    const-string v1, "UserManager"

    const-string v2, "getUserInfo"

    const-string v5, "2.0.0"

    invoke-direct/range {v0 .. v5}, Lcom/unisound/ant/device/bean/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;Ljava/lang/String;)V

    .line 35
    .local v0, "requestInfo":Lcom/unisound/ant/device/bean/RequestInfo;
    invoke-static {}, Lcom/unisound/vui/util/HttpUtils;->getInstance()Lcom/unisound/vui/util/HttpUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getAppServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "getUserInfo"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v0}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v1, v2, v5}, Lcom/unisound/vui/util/HttpUtils;->postSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v10

    .line 39
    .local v10, "response":Lokhttp3/Response;
    invoke-static {v10}, Lcom/unisound/vui/util/HttpUtils;->isResponseCorrect(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    :try_start_0
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, "result":Ljava/lang/String;
    invoke-static {v11}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 43
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "status"

    invoke-static {v9, v1}, Lcom/unisound/vui/util/JsonTool;->getJsonIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v12

    .line 45
    .local v12, "status":I
    const/16 v1, 0x1f4

    if-ne v1, v12, :cond_0

    .line 47
    const/4 v8, 0x0

    .line 48
    .local v8, "isBound":Z
    sget-object v1, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "fetch device bound status, device is not bound"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return v8

    .line 49
    .end local v8    # "isBound":Z
    :cond_0
    if-nez v12, :cond_1

    .line 51
    const/4 v8, 0x1

    .line 52
    .restart local v8    # "isBound":Z
    sget-object v1, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "fetch device bound status, device is bound"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v8    # "isBound":Z
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "status":I
    :catch_0
    move-exception v7

    .line 62
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query bound bound error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw v7

    .line 54
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "result":Ljava/lang/String;
    .restart local v12    # "status":I
    :cond_1
    :try_start_1
    const-string v1, "detailInfo"

    invoke-static {v9, v1}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "detailInfo":Ljava/lang/String;
    sget-object v1, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch device bound status failure, errorCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", errorDetail = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", errorDetail = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v6    # "detailInfo":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "status":I
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query bound status error, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v10, :cond_3

    const-string v1, "response is null"

    .line 68
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " response code is "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
