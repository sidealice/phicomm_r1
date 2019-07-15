.class public Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/RequestInfo;
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
.method public constructor <init>(I)V
    .locals 0
    .param p1, "subSysId"    # I

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->subSysId:I

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "subSysId"    # I
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    .line 165
    iput p2, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->subSysId:I

    .line 166
    iput-object p3, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->token:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSysId()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->subSysId:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->clientId:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSubSysId(I)V
    .locals 0
    .param p1, "subSysId"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->subSysId:I

    .line 187
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$ClientInfo;->token:Ljava/lang/String;

    .line 195
    return-void
.end method
