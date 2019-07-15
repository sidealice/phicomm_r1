.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
.super Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 5
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p9, "programSplicePlaybackPositionUs"    # J
    .param p12, "autoReturn"    # Z
    .param p13, "breakDurationUs"    # J
    .param p15, "uniqueProgramId"    # I
    .param p16, "availNum"    # I
    .param p17, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p11, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 99
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 100
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 101
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 102
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 103
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 104
    iput-wide p7, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 105
    iput-wide p9, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 106
    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 107
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 108
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 109
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 110
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 111
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 112
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "componentSpliceListSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v0, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_4

    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v1    # "componentSpliceListSize":I
    .end local v2    # "i":I
    :cond_0
    move v3, v5

    .line 116
    goto :goto_0

    :cond_1
    move v3, v5

    .line 117
    goto :goto_1

    :cond_2
    move v3, v5

    .line 118
    goto :goto_2

    :cond_3
    move v3, v5

    .line 119
    goto :goto_3

    .line 127
    .restart local v0    # "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v1    # "componentSpliceListSize":I
    .restart local v2    # "i":I
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_5

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 133
    return-void

    :cond_5
    move v4, v5

    .line 128
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/util/TimestampAdjuster;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 37
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v34

    .line 139
    .local v34, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 140
    .local v10, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 141
    .local v11, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 142
    .local v12, "programSpliceFlag":Z
    const/4 v13, 0x0

    .line 143
    .local v13, "spliceImmediateFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    .local v14, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 145
    .local v18, "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v22, 0x0

    .line 146
    .local v22, "uniqueProgramId":I
    const/16 v23, 0x0

    .line 147
    .local v23, "availNum":I
    const/16 v24, 0x0

    .line 148
    .local v24, "availsExpected":I
    const/16 v19, 0x0

    .line 149
    .local v19, "autoReturn":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .local v20, "breakDurationUs":J
    if-nez v10, :cond_9

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v29

    .line 152
    .local v29, "headerByte":I
    move/from16 v0, v29

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    .line 153
    :goto_1
    and-int/lit8 v2, v29, 0x40

    if-eqz v2, :cond_4

    const/4 v12, 0x1

    .line 154
    :goto_2
    and-int/lit8 v2, v29, 0x20

    if-eqz v2, :cond_5

    const/16 v28, 0x1

    .line 155
    .local v28, "durationFlag":Z
    :goto_3
    and-int/lit8 v2, v29, 0x10

    if-eqz v2, :cond_6

    const/4 v13, 0x1

    .line 156
    :goto_4
    if-eqz v12, :cond_0

    if-nez v13, :cond_0

    .line 157
    invoke-static/range {p0 .. p2}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v14

    .line 159
    :cond_0
    if-nez v12, :cond_7

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v25

    .line 161
    .local v25, "componentCount":I
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .restart local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_5
    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 164
    .local v3, "componentTag":I
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 165
    .local v4, "componentSplicePts":J
    if-nez v13, :cond_1

    .line 166
    invoke-static/range {p0 .. p2}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)J

    move-result-wide v4

    .line 168
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 169
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    .line 168
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v32, v32, 0x1

    goto :goto_5

    .line 139
    .end local v3    # "componentTag":I
    .end local v4    # "componentSplicePts":J
    .end local v10    # "spliceEventCancelIndicator":Z
    .end local v11    # "outOfNetworkIndicator":Z
    .end local v12    # "programSpliceFlag":Z
    .end local v13    # "spliceImmediateFlag":Z
    .end local v14    # "programSplicePts":J
    .end local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v19    # "autoReturn":Z
    .end local v20    # "breakDurationUs":J
    .end local v22    # "uniqueProgramId":I
    .end local v23    # "availNum":I
    .end local v24    # "availsExpected":I
    .end local v25    # "componentCount":I
    .end local v28    # "durationFlag":Z
    .end local v29    # "headerByte":I
    .end local v32    # "i":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 152
    .restart local v10    # "spliceEventCancelIndicator":Z
    .restart local v11    # "outOfNetworkIndicator":Z
    .restart local v12    # "programSpliceFlag":Z
    .restart local v13    # "spliceImmediateFlag":Z
    .restart local v14    # "programSplicePts":J
    .restart local v18    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .restart local v19    # "autoReturn":Z
    .restart local v20    # "breakDurationUs":J
    .restart local v22    # "uniqueProgramId":I
    .restart local v23    # "availNum":I
    .restart local v24    # "availsExpected":I
    .restart local v29    # "headerByte":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 153
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 154
    :cond_5
    const/16 v28, 0x0

    goto :goto_3

    .line 155
    .restart local v28    # "durationFlag":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    .line 172
    :cond_7
    if-eqz v28, :cond_8

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v30, v0

    .line 174
    .local v30, "firstByte":J
    const-wide/16 v6, 0x80

    and-long v6, v6, v30

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_a

    const/16 v19, 0x1

    .line 175
    :goto_6
    const-wide/16 v6, 0x1

    and-long v6, v6, v30

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    or-long v26, v6, v8

    .line 176
    .local v26, "breakDuration90khz":J
    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v26

    const-wide/16 v8, 0x5a

    div-long v20, v6, v8

    .line 178
    .end local v26    # "breakDuration90khz":J
    .end local v30    # "firstByte":J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v22

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v23

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 182
    .end local v28    # "durationFlag":Z
    .end local v29    # "headerByte":I
    :cond_9
    new-instance v7, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    .line 184
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v16

    move-wide/from16 v8, v34

    invoke-direct/range {v7 .. v24}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    return-object v7

    .line 174
    .restart local v28    # "durationFlag":Z
    .restart local v29    # "headerByte":I
    .restart local v30    # "firstByte":J
    :cond_a
    const/16 v19, 0x0

    goto :goto_6
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    iget-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 224
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 228
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 230
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0    # "componentSpliceListSize":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 221
    goto :goto_0

    :cond_1
    move v2, v4

    .line 222
    goto :goto_1

    :cond_2
    move v2, v4

    .line 223
    goto :goto_2

    :cond_3
    move v2, v4

    .line 224
    goto :goto_3

    .line 232
    .restart local v0    # "componentSpliceListSize":I
    .restart local v1    # "i":I
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    if-eqz v2, :cond_5

    :goto_5
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 233
    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return-void

    :cond_5
    move v3, v4

    .line 232
    goto :goto_5
.end method
