.class Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

.field final synthetic val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/LoopingMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .param p2, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p3, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->access$002(Lcom/google/android/exoplayer2/source/LoopingMediaSource;I)I

    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    .line 69
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;I)V

    .line 70
    .local v0, "loopingTimeline":Lcom/google/android/exoplayer2/Timeline;
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 71
    return-void

    .line 69
    .end local v0    # "loopingTimeline":Lcom/google/android/exoplayer2/Timeline;
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_0
.end method
