.class Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final synthetic val$mediaTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackType:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p4, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackSelectionReason:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackSelectionData:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$mediaTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackType:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackSelectionReason:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->this$0:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher$6;->val$mediaTimeUs:J

    .line 302
    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v6

    .line 301
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 303
    return-void
.end method
