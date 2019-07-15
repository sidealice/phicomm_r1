.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getNextChunk(Lcom/google/android/exoplayer2/source/chunk/MediaChunk;JLcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
.end method
