.class public Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;
.super Ljava/lang/Object;
.source "ModifyWifiInfo.java"


# instance fields
.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/ModifyWifiInfo;->udid:Ljava/lang/String;

    return-void
.end method
