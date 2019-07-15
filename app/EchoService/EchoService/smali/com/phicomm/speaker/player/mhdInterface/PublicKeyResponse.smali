.class public Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;
.super Ljava/lang/Object;
.source "PublicKeyResponse.java"


# instance fields
.field private data:Ljava/lang/String;

.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getErrcode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public isState()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->state:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->data:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setErrcode(I)V
    .locals 0
    .param p1, "errcode"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->errcode:I

    .line 39
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->errmsg:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/mhdInterface/PublicKeyResponse;->state:Z

    .line 31
    return-void
.end method
