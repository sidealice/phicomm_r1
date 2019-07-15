.class public Lcom/phicomm/speaker/bean/confignet/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"


# instance fields
.field private bssid:Ljava/lang/String;

.field private level:I

.field private password:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private pwd_v2:Ljava/lang/String;

.field private security:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

.field private ssid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;-><init>()V

    const-string v1, "ssid"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->ssid:Ljava/lang/String;

    const-string v1, "mac"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->bssid:Ljava/lang/String;

    const-string v1, "level"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->level:I

    const-string v1, "secure"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/f/a/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->security:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    const-string v1, "password"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->password:Ljava/lang/String;

    const-string v1, "pwd"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd:Ljava/lang/String;

    const-string v1, "pwd_v2"

    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd_v2:Ljava/lang/String;

    return-object v0
.end method

.method public static fromJsonArray(Ljava/lang/String;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->fromJsonArray(Lorg/json/JSONArray;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonArray(Lorg/json/JSONArray;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;-><init>()V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->ssid:Ljava/lang/String;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->bssid:Ljava/lang/String;

    const/4 v1, 0x2

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->level:I

    const/4 v1, 0x3

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object p0

    iput-object p0, v0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->security:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->level:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Lcom/phicomm/speaker/constants/yanry/WifiSecurity;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->security:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->password:Ljava/lang/String;

    :try_start_0
    const-string v0, "ffe5484db0d4498b"

    const-string v1, "ecda10b17c724c26"

    .line 76
    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/phicomm/speaker/f/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd_v2:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ssid"

    .line 94
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    .line 95
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "level"

    .line 96
    iget v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->level:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "secure"

    .line 97
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->security:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    .line 98
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->password:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->password:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pwd"

    .line 99
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pwd_v2"

    .line 100
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd_v2:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->pwd_v2:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 102
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
