.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;
.super Ljava/lang/Object;
.source "BsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;->data:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/BsResponse$ResultBean;->entryId:Ljava/lang/String;

    .line 88
    return-void
.end method
