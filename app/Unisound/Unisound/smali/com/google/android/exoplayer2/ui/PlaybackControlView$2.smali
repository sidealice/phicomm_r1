.class Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;->this$0:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 258
    return-void
.end method
