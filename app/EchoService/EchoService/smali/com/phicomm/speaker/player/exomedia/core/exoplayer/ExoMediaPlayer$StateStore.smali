.class Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
.super Ljava/lang/Object;
.source "ExoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStore"
.end annotation


# static fields
.field public static final FLAG_PLAY_WHEN_READY:I = -0x10000000

.field public static final STATE_SEEKING:I = 0x64


# instance fields
.field private prevStates:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$1;

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getMostRecentState()I
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getState(ZI)I
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    .line 590
    if-eqz p1, :cond_0

    const/high16 v0, -0x10000000

    :goto_0
    or-int/2addr v0, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastReportedPlayWhenReady()Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesHistory([IZ)Z
    .locals 6
    .param p1, "states"    # [I
    .param p2, "ignorePlayWhenReady"    # Z

    .prologue
    .line 602
    const/4 v1, 0x1

    .line 603
    .local v1, "flag":Z
    if-eqz p2, :cond_0

    const v0, 0xfffffff

    .line 604
    .local v0, "andFlag":I
    :goto_0
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    array-length v4, v4

    array-length v5, p1

    sub-int v3, v4, v5

    .line 606
    .local v3, "startIndex":I
    move v2, v3

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 607
    iget-object v4, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    sub-int v5, v2, v3

    aget v5, p1, v5

    and-int/2addr v5, v0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_2
    and-int/2addr v1, v4

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 603
    .end local v0    # "andFlag":I
    .end local v2    # "i":I
    .end local v3    # "startIndex":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 607
    .restart local v0    # "andFlag":I
    .restart local v2    # "i":I
    .restart local v3    # "startIndex":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 610
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method

.method public setMostRecentState(ZI)V
    .locals 7
    .param p1, "playWhenReady"    # Z
    .param p2, "state"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getState(ZI)I

    move-result v0

    .line 579
    .local v0, "newState":I
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aget v1, v1, v4

    if-ne v1, v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aget v3, v3, v5

    aput v3, v1, v2

    .line 584
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aget v2, v2, v6

    aput v2, v1, v5

    .line 585
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    iget-object v2, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aget v2, v2, v4

    aput v2, v1, v6

    .line 586
    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->prevStates:[I

    aput p2, v1, v4

    goto :goto_0
.end method
