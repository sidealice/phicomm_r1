.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;
.super Ljava/lang/Object;
.source "EffectiveToken.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private subSysId:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x4

    iput v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;->subSysId:I

    .line 13
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;->clientId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/EffectiveToken;->token:Ljava/lang/String;

    .line 29
    return-void
.end method
