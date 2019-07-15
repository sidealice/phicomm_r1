.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/request/RequestProtocolFactory;
.super Ljava/lang/Object;
.source "RequestProtocolFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static buildRequestContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;
    .locals 1
    .param p0, "businessType"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "data":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->setBusinessType(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->setCommand(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->setData(Ljava/lang/Object;)Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader$Builder;->build()Lcom/phicomm/speaker/player/mhdInterface/unisound/request/BsRequestHeader;

    move-result-object v0

    return-object v0
.end method
