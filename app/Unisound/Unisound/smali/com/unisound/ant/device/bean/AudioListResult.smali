.class public Lcom/unisound/ant/device/bean/AudioListResult;
.super Ljava/lang/Object;
.source "AudioListResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;
    }
.end annotation


# instance fields
.field private controlInfo:Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

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
.method public getControlInfo()Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AudioListResult;->controlInfo:Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AudioListResult;->detailInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/unisound/ant/device/bean/AudioListResult;->status:I

    return v0
.end method

.method public setControlInfo(Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;)V
    .locals 0
    .param p1, "controlInfo"    # Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AudioListResult;->controlInfo:Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    .line 25
    return-void
.end method

.method public setDetailInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailInfo"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AudioListResult;->detailInfo:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/unisound/ant/device/bean/AudioListResult;->status:I

    .line 41
    return-void
.end method
