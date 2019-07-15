.class public final Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;
.super Ljava/lang/Object;
.source "NoOpCacheEvictor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 40
    return-void
.end method

.method public onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "span"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 45
    return-void
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "oldSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .param p3, "newSpan"    # Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .prologue
    .line 50
    return-void
.end method

.method public onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "cache"    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "maxLength"    # J

    .prologue
    .line 35
    return-void
.end method
