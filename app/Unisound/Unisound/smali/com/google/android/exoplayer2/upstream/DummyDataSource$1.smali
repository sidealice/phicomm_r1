.class final Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DummyDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DummyDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DummyDataSource$1;)V

    return-object v0
.end method
