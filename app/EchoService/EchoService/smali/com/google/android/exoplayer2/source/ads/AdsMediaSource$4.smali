.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$4;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->detachPlayer()V

    .line 229
    return-void
.end method
