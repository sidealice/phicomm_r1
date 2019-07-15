.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field final synthetic val$player:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->val$player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->val$player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$2;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->attachPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Landroid/view/ViewGroup;)V

    .line 154
    return-void
.end method
