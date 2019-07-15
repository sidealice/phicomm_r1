.class public Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;
.super Ljava/lang/Object;
.source "MusicParam.java"


# instance fields
.field private id:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/MusicParam;->udid:Ljava/lang/String;

    .line 28
    return-void
.end method
