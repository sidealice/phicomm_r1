.class public Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private passportId:J

.field private subsystemId:I

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->passportId:J

    return-wide v0
.end method

.method public getSubsystemId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->subsystemId:I

    return v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->appKey:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->extras:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPassportId(J)V
    .locals 1
    .param p1, "passportId"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->passportId:J

    .line 53
    return-void
.end method

.method public setSubsystemId(I)V
    .locals 0
    .param p1, "subsystemId"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->subsystemId:I

    .line 45
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->udid:Ljava/lang/String;

    .line 37
    return-void
.end method
