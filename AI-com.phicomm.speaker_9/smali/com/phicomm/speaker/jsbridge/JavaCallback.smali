.class public Lcom/phicomm/speaker/jsbridge/JavaCallback;
.super Ljava/lang/Object;
.source "JavaCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2562ffe8e4a97305L


# instance fields
.field private ExtraInfo:Ljava/lang/String;

.field private accessToken:Ljava/lang/String;

.field private dataType:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private hasChange:I

.field private mqttData:Ljava/lang/String;

.field private netResponse:Ljava/lang/String;

.field private netType:Ljava/lang/String;

.field private passResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "success"

    .line 25
    iput-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "success"

    .line 25
    iput-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorMsg:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorCode:I

    .line 20
    iput-object p2, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->ExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHasChange()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->hasChange:I

    return v0
.end method

.method public getMqttData()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->mqttData:Ljava/lang/String;

    return-object v0
.end method

.method public getNetResponse()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->netResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassResponse()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->passResponse:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->dataType:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->ExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public setHasChange(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->hasChange:I

    return-void
.end method

.method public setMqttData(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->mqttData:Ljava/lang/String;

    return-void
.end method

.method public setNetResponse(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->netResponse:Ljava/lang/String;

    return-void
.end method

.method public setNetType(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->netType:Ljava/lang/String;

    return-void
.end method

.method public setPassResponse(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JavaCallback;->passResponse:Ljava/lang/String;

    return-void
.end method
