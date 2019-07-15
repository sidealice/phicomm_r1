.class public Lcom/unisound/ant/device/bean/OnOffLineMessage;
.super Lcom/unisound/ant/device/bean/Parameter;
.source "OnOffLineMessage.java"


# instance fields
.field connAccessId:Ljava/lang/String;

.field phoneUdid:Ljava/lang/String;

.field tdid:Ljava/lang/String;

.field token:Ljava/lang/String;

.field udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/unisound/ant/device/bean/Parameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnAccessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->connAccessId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->phoneUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getTdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setConnAccessId(Ljava/lang/String;)V
    .locals 0
    .param p1, "connAccessId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->connAccessId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPhoneUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneUdid"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->phoneUdid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tdid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->tdid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->token:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/unisound/ant/device/bean/OnOffLineMessage;->udid:Ljava/lang/String;

    .line 19
    return-void
.end method
