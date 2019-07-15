.class public Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;
.super Ljava/lang/Object;
.source "CommonConfigInfo.java"


# instance fields
.field private alarm_volume:I

.field private deviceId:Ljava/lang/String;

.field private music_voluem:I

.field private sound_effect:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarm_volume()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->alarm_volume:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic_voluem()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->music_voluem:I

    return v0
.end method

.method public getSound_effect()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->sound_effect:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarm_volume(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->alarm_volume:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setMusic_voluem(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->music_voluem:I

    return-void
.end method

.method public setSound_effect(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->sound_effect:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->ssid:Ljava/lang/String;

    return-void
.end method
