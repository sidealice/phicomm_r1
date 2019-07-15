.class Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;IJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$trackType:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$mediaStartTimeUs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$mediaEndTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$trackType:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$mediaStartTimeUs:J

    invoke-static {v2, v4, v5}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$5;->val$mediaEndTimeUs:J

    .line 288
    invoke-static {v4, v6, v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v4

    .line 287
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;->onUpstreamDiscarded(IJJ)V

    .line 289
    return-void
.end method
