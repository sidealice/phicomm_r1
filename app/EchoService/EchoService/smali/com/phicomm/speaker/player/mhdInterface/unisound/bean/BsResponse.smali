.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ControlInfo;,
        Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;
    }
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
.field controlInfo:Lcom/google/gson/JsonObject;

.field detailInfo:Ljava/lang/String;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getControlInfo()Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->controlInfo:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

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
    .line 52
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->getControlInfo()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntityListInfo(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->getControlInfo()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->result:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailInfo"    # Ljava/lang/String;

    .prologue
    .line 36
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->detailInfo:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->result:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->status:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 28
    .local p0, "this":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;, "Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse<TT;>;"
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;->version:Ljava/lang/String;

    .line 29
    return-void
.end method
