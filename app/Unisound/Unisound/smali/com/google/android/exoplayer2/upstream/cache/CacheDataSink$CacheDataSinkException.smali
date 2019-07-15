.class public Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
.super Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
.source "CacheDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheDataSinkException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/io/IOException;)V

    .line 57
    return-void
.end method
