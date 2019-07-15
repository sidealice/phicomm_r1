.class public Lcom/phicomm/speaker/jsbridge/JSData;
.super Ljava/lang/Object;
.source "JSData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6721abb711708a37L


# instance fields
.field private dataType:I

.field private message:Ljava/lang/String;

.field private mqttBody:Ljava/lang/String;

.field private netAction:Ljava/lang/String;

.field private oAuthToken:Ljava/lang/String;

.field private pageExtra:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private pushType:Ljava/lang/String;

.field private qos:I

.field private requestBody:Ljava/lang/String;

.field private requestData:Ljava/lang/String;

.field private requestHeader:Ljava/lang/String;

.field private requestTopic:Ljava/lang/String;

.field private responseTopic:Ljava/lang/String;

.field private shadowData:Ljava/lang/String;

.field private shadowName:Ljava/lang/String;

.field private shadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showTime:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->dataType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMqttBody()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->mqttBody:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAction()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->netAction:Ljava/lang/String;

    return-object v0
.end method

.method public getPageExtra()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pageExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getQos()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->qos:I

    return v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestBody:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestData()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeader()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTopic()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTopic()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->responseTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowData()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadowData:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadowName:Ljava/lang/String;

    return-object v0
.end method

.method public getShadows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadows:Ljava/util/List;

    return-object v0
.end method

.method public getShowTime()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->showTime:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getoAuthToken()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/jsbridge/JSData;->oAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->dataType:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->message:Ljava/lang/String;

    return-void
.end method

.method public setMqttBody(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->mqttBody:Ljava/lang/String;

    return-void
.end method

.method public setNetAction(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->netAction:Ljava/lang/String;

    return-void
.end method

.method public setPageExtra(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pageExtra:Ljava/lang/String;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pageName:Ljava/lang/String;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->pushType:Ljava/lang/String;

    return-void
.end method

.method public setQos(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->qos:I

    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestBody:Ljava/lang/String;

    return-void
.end method

.method public setRequestData(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestData:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestHeader:Ljava/lang/String;

    return-void
.end method

.method public setRequestTopic(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->requestTopic:Ljava/lang/String;

    return-void
.end method

.method public setResponseTopic(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->responseTopic:Ljava/lang/String;

    return-void
.end method

.method public setShadowData(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadowData:Ljava/lang/String;

    return-void
.end method

.method public setShadowName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadowName:Ljava/lang/String;

    return-void
.end method

.method public setShadows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->shadows:Ljava/util/List;

    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->showTime:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->url:Ljava/lang/String;

    return-void
.end method

.method public setoAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/phicomm/speaker/jsbridge/JSData;->oAuthToken:Ljava/lang/String;

    return-void
.end method
