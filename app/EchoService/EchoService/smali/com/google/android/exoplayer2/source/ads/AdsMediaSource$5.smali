.class Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field final synthetic val$error:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;->val$error:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$5;->val$error:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdsListener;->onAdLoadError(Ljava/io/IOException;)V

    .line 255
    :cond_0
    return-void
.end method
