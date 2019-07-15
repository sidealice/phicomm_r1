.class public final Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final maxSegmentsPerLoad:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V
    .locals 0
    .param p1, "dataSourceFactory"    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .param p2, "maxSegmentsPerLoad"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 67
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    .line 68
    return-void
.end method


# virtual methods
.method public createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IILcom/google/android/exoplayer2/trackselection/TrackSelection;JZZ)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;
    .locals 14
    .param p1, "manifestLoaderErrorThrower"    # Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndex"    # I
    .param p5, "trackSelection"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .param p6, "elapsedRealtimeOffsetMs"    # J
    .param p8, "enableEventMessageTrack"    # Z
    .param p9, "enableCea608Track"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v7

    .line 76
    .local v7, "dataSource":Lcom/google/android/exoplayer2/upstream/DataSource;
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;

    iget v10, p0, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource;-><init>(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IILcom/google/android/exoplayer2/trackselection/TrackSelection;Lcom/google/android/exoplayer2/upstream/DataSource;JIZZ)V

    return-object v1
.end method
