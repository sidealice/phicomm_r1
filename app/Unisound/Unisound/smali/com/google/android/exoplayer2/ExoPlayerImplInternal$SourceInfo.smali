.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceInfo"
.end annotation


# instance fields
.field public final manifest:Ljava/lang/Object;

.field public final playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field public final seekAcks:I

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V
    .locals 0
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;
    .param p3, "playbackInfo"    # Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .param p4, "seekAcks"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 82
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    .line 83
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 84
    iput p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    .line 85
    return-void
.end method
