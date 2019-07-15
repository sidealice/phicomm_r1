.class public interface abstract Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
.end method

.method public abstract onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
.end method

.method public abstract onUpstreamDiscarded(IJJ)V
.end method
