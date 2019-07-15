.class public Lcom/unisound/ant/device/bean/ModifyWifiInfo;
.super Ljava/lang/Object;
.source "ModifyWifiInfo.java"


# instance fields
.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->password:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->ssid:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/bean/ModifyWifiInfo;->udid:Ljava/lang/String;

    .line 18
    return-void
.end method
