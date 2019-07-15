.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field info:Lcom/google/gson/JsonObject;

.field tdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private getInfo()Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;->info:Lcom/google/gson/JsonObject;

    return-object v0
.end method


# virtual methods
.method public getEntity(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;->getInfo()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;->tdid:Ljava/lang/String;

    return-object v0
.end method

.method public setTdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tdid"    # Ljava/lang/String;

    .prologue
    .line 111
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo<TT;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;->tdid:Ljava/lang/String;

    .line 112
    return-void
.end method
