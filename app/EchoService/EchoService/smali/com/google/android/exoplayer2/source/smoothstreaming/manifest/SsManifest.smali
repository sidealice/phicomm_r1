.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    }
.end annotation


# static fields
.field public static final UNSET_LOOKAHEAD:I = -0x1


# instance fields
.field public final durationUs:J

.field public final dvrWindowLengthUs:J

.field public final isLive:Z

.field public final lookAheadCount:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

.field public final streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;


# direct methods
.method private constructor <init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "durationUs"    # J
    .param p5, "dvrWindowLengthUs"    # J
    .param p7, "lookAheadCount"    # I
    .param p8, "isLive"    # Z
    .param p9, "protectionElement"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    .param p10, "streamElements"    # [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->majorVersion:I

    .line 114
    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->minorVersion:I

    .line 115
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    .line 116
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    .line 117
    iput p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    .line 118
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    .line 119
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 120
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 121
    return-void
.end method

.method public constructor <init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 13
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "timescale"    # J
    .param p5, "duration"    # J
    .param p7, "dvrWindowLength"    # J
    .param p9, "lookAheadCount"    # I
    .param p10, "isLive"    # Z
    .param p11, "protectionElement"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    .param p12, "streamElements"    # [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v0

    .line 104
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, v8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 102
    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;-><init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V

    .line 108
    return-void

    .line 102
    :cond_0
    const-wide/32 v2, 0xf4240

    move-wide/from16 v0, p5

    move-wide/from16 v4, p3

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0xf4240

    move-wide/from16 v0, p7

    move-wide/from16 v4, p3

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    goto :goto_1
.end method


# virtual methods
.method public final copy(Ljava/util/List;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "trackKeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;>;"
    new-instance v18, Ljava/util/LinkedList;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v18, "sortedKeys":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;>;"
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 134
    const/4 v15, 0x0

    .line 135
    .local v15, "currentStreamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v14, "copiedStreamElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "copiedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/Format;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 138
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    .line 139
    .local v17, "key":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    aget-object v19, v3, v4

    .line 140
    .local v19, "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    move-object/from16 v0, v19

    if-eq v0, v15, :cond_0

    if-eqz v15, :cond_0

    .line 142
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v15, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->copy([Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 145
    :cond_0
    move-object/from16 v15, v19

    .line 146
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    aget-object v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 148
    .end local v17    # "key":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .end local v19    # "streamElement":Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    :cond_1
    if-eqz v15, :cond_2

    .line 150
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v15, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->copy([Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 154
    .local v13, "copiedStreamElementsArray":[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->majorVersion:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->minorVersion:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;-><init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V

    return-object v3
.end method
