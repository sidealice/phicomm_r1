.class public interface abstract Lcom/google/android/exoplayer2/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
