.class public Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;
.super Ljava/lang/Object;
.source "LconRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/bean/LconRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectiveToken"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->clientId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->token:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->clientId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;->token:Ljava/lang/String;

    .line 69
    return-void
.end method
