.class public Lcom/unisound/ant/device/bean/PhicommModeInfo;
.super Ljava/lang/Object;
.source "PhicommModeInfo.java"


# static fields
.field public static final MODE_LIST_LOOP:I = 0x2

.field public static final MODE_LIST_SINGLE_LOOP:I = 0x3

.field public static final MODE_RANDOM:I = 0x1


# instance fields
.field private playMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayMode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/unisound/ant/device/bean/PhicommModeInfo;->playMode:I

    return v0
.end method

.method public setPlayMode(I)V
    .locals 0
    .param p1, "playMode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/unisound/ant/device/bean/PhicommModeInfo;->playMode:I

    .line 25
    return-void
.end method
