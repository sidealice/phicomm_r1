.class public Lcom/phicomm/speaker/bean/FxResponse;
.super Ljava/lang/Object;
.source "FxResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x48bdaa105ca533faL


# instance fields
.field private error:Ljava/lang/String;

.field private httpCode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private token_status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 13
    iput-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->error:Ljava/lang/String;

    const-string v0, "200"

    .line 21
    iput-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->httpCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->httpCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_status()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/phicomm/speaker/bean/FxResponse;->token_status:I

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FxResponse;->error:Ljava/lang/String;

    return-void
.end method

.method public setHttpCode(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FxResponse;->httpCode:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FxResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/bean/FxResponse;->reason:Ljava/lang/String;

    return-void
.end method

.method public setToken_status(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/phicomm/speaker/bean/FxResponse;->token_status:I

    return-void
.end method
