.class public Lcom/unisound/ant/device/bean/CurrentMusicList;
.super Ljava/lang/Object;
.source "CurrentMusicList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;
    }
.end annotation


# instance fields
.field private controlInfo:Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;

.field private detailInfo:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlInfo()Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->controlInfo:Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->status:I

    return v0
.end method

.method public setControlInfo(Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;)V
    .locals 0
    .param p1, "controlInfo"    # Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->controlInfo:Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;

    .line 29
    return-void
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailInfo"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->detailInfo:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/unisound/ant/device/bean/CurrentMusicList;->status:I

    .line 45
    return-void
.end method
