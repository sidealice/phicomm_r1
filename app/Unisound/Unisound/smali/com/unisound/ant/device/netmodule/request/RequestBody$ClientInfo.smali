.class public Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;
.super Ljava/lang/Object;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/netmodule/request/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientInfo"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private subSysId:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x9

    iput v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->subSysId:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSysId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->subSysId:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->clientId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSubSysId(I)V
    .locals 0
    .param p1, "subSysId"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->subSysId:I

    .line 86
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;->token:Ljava/lang/String;

    .line 94
    return-void
.end method
