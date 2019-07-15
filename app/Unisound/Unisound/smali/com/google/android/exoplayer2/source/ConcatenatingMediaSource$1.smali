.class Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iput p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p1, "timeline"    # Lcom/google/android/exoplayer2/Timeline;
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;->val$index:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->access$000(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
