.class public Lcom/unisound/ant/device/bean/CollectInfo;
.super Ljava/lang/Object;
.source "CollectInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private ids:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CollectInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CollectInfo;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CollectInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CollectInfo;->id:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CollectInfo;->ids:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CollectInfo;->udid:Ljava/lang/String;

    .line 18
    return-void
.end method
