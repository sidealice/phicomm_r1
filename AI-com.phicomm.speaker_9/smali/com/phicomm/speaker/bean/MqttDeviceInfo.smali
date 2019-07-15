.class public Lcom/phicomm/speaker/bean/MqttDeviceInfo;
.super Ljava/lang/Object;
.source "MqttDeviceInfo.java"


# instance fields
.field private isFresh:Z

.field private ttsPlayer:Ljava/lang/String;

.field private wakeWord:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->ttsPlayer:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->wakeWord:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->isFresh:Z

    return-void
.end method

.method public static createDefault()Lcom/phicomm/speaker/bean/MqttDeviceInfo;
    .locals 4

    .line 22
    new-instance v0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    const-string v1, ""

    const-string v2, "\u5c0f\u8baf\u5c0f\u8baf"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public getTtsPlayer()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->ttsPlayer:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeWord()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->wakeWord:Ljava/lang/String;

    return-object v0
.end method

.method public isFresh()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->isFresh:Z

    return v0
.end method

.method public setFresh(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->isFresh:Z

    return-void
.end method

.method public setTtsPlayer(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->ttsPlayer:Ljava/lang/String;

    return-void
.end method

.method public setWakeWord(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->wakeWord:Ljava/lang/String;

    return-void
.end method
