.class public Lcom/unisound/ant/device/bean/PhicommPlayStateInfo;
.super Ljava/lang/Object;
.source "PhicommPlayStateInfo.java"


# static fields
.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOP:I


# instance fields
.field private playState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayState()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommPlayStateInfo;->playState:I

    return v0
.end method

.method public setPlayState(I)V
    .locals 0
    .param p1, "playState"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommPlayStateInfo;->playState:I

    .line 25
    return-void
.end method
