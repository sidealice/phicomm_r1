.class public Lcom/phicomm/speaker/bean/CommonResponse;
.super Ljava/lang/Object;
.source "CommonResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x106dc608fb258805L


# instance fields
.field private data:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private httpCode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private token_status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 14
    iput-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->error:Ljava/lang/String;

    const-string v0, "200"

    .line 25
    iput-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->httpCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->httpCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_status()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/phicomm/speaker/bean/CommonResponse;->token_status:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->data:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->error:Ljava/lang/String;

    return-void
.end method

.method public setHttpCode(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->httpCode:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->reason:Ljava/lang/String;

    return-void
.end method

.method public setToken_status(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/phicomm/speaker/bean/CommonResponse;->token_status:I

    return-void
.end method
