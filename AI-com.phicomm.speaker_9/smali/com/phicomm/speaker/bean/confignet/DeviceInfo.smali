.class public Lcom/phicomm/speaker/bean/confignet/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private romVersion:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    invoke-direct {p0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;-><init>()V

    const-string v1, "device_id"

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceId:Ljava/lang/String;

    const-string v1, "udid"

    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->udid:Ljava/lang/String;

    const-string v1, "device_type"

    .line 30
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceType:Ljava/lang/String;

    const-string v1, "model"

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->model:Ljava/lang/String;

    const-string v1, "hardware_version"

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->hardwareVersion:Ljava/lang/String;

    const-string v1, "rom_version"

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->romVersion:Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/a;->a(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->romVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device_id"

    .line 41
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "udid"

    iget-object v3, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "device_type"

    iget-object v3, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "model"

    iget-object v3, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hardware_version"

    iget-object v3, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->hardwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "rom_version"

    iget-object v3, p0, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->romVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
