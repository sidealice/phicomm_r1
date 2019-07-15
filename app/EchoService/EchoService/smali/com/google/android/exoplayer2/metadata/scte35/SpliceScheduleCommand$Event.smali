.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


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
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p7, "utcSpliceTime"    # J
    .param p9, "autoReturn"    # Z
    .param p10, "breakDurationUs"    # J
    .param p12, "uniqueProgramId"    # I
    .param p13, "availNum"    # I
    .param p14, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p6, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 93
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 94
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 95
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 96
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 97
    iput-wide p7, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 98
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 99
    iput-wide p10, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 100
    iput p12, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 101
    iput p13, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 102
    iput p14, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 103
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "componentSpliceListLength":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 113
    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$000(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v1    # "componentSpliceListLength":I
    .end local v2    # "i":I
    :cond_0
    move v3, v5

    .line 107
    goto :goto_0

    :cond_1
    move v3, v5

    .line 108
    goto :goto_1

    :cond_2
    move v3, v5

    .line 109
    goto :goto_2

    .line 115
    .restart local v0    # "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .restart local v1    # "componentSpliceListLength":I
    .restart local v2    # "i":I
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_4

    :goto_4
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 122
    return-void

    :cond_4
    move v4, v5

    .line 117
    goto :goto_4
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static parseFromSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 34
    .param p0, "sectionData"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 127
    .local v6, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 128
    .local v8, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v9, 0x0

    .line 129
    .local v9, "outOfNetworkIndicator":Z
    const/4 v10, 0x0

    .line 130
    .local v10, "programSpliceFlag":Z
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 131
    .local v12, "utcSpliceTime":J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v11, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v17, 0x0

    .line 133
    .local v17, "uniqueProgramId":I
    const/16 v18, 0x0

    .line 134
    .local v18, "availNum":I
    const/16 v19, 0x0

    .line 135
    .local v19, "availsExpected":I
    const/4 v14, 0x0

    .line 136
    .local v14, "autoReturn":Z
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 137
    .local v15, "breakDurationUs":J
    if-nez v8, :cond_7

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v28

    .line 139
    .local v28, "headerByte":I
    move/from16 v0, v28

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_2

    const/4 v9, 0x1

    .line 140
    :goto_1
    and-int/lit8 v5, v28, 0x40

    if-eqz v5, :cond_3

    const/4 v10, 0x1

    .line 141
    :goto_2
    and-int/lit8 v5, v28, 0x20

    if-eqz v5, :cond_4

    const/16 v23, 0x1

    .line 142
    .local v23, "durationFlag":Z
    :goto_3
    if-eqz v10, :cond_0

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 145
    :cond_0
    if-nez v10, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 147
    .local v4, "componentCount":I
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .restart local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_4
    move/from16 v0, v29

    if-ge v0, v4, :cond_5

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v22

    .line 150
    .local v22, "componentTag":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v24

    .line 151
    .local v24, "componentUtcSpliceTime":J
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    const/16 v30, 0x0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    move-object/from16 v3, v30

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 127
    .end local v4    # "componentCount":I
    .end local v8    # "spliceEventCancelIndicator":Z
    .end local v9    # "outOfNetworkIndicator":Z
    .end local v10    # "programSpliceFlag":Z
    .end local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .end local v12    # "utcSpliceTime":J
    .end local v14    # "autoReturn":Z
    .end local v15    # "breakDurationUs":J
    .end local v17    # "uniqueProgramId":I
    .end local v18    # "availNum":I
    .end local v19    # "availsExpected":I
    .end local v22    # "componentTag":I
    .end local v23    # "durationFlag":Z
    .end local v24    # "componentUtcSpliceTime":J
    .end local v28    # "headerByte":I
    .end local v29    # "i":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 139
    .restart local v8    # "spliceEventCancelIndicator":Z
    .restart local v9    # "outOfNetworkIndicator":Z
    .restart local v10    # "programSpliceFlag":Z
    .restart local v11    # "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .restart local v12    # "utcSpliceTime":J
    .restart local v14    # "autoReturn":Z
    .restart local v15    # "breakDurationUs":J
    .restart local v17    # "uniqueProgramId":I
    .restart local v18    # "availNum":I
    .restart local v19    # "availsExpected":I
    .restart local v28    # "headerByte":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 140
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 141
    :cond_4
    const/16 v23, 0x0

    goto :goto_3

    .line 154
    .restart local v23    # "durationFlag":Z
    :cond_5
    if-eqz v23, :cond_6

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    .line 156
    .local v26, "firstByte":J
    const-wide/16 v30, 0x80

    and-long v30, v30, v26

    const-wide/16 v32, 0x0

    cmp-long v5, v30, v32

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    .line 157
    :goto_5
    const-wide/16 v30, 0x1

    and-long v30, v30, v26

    const/16 v5, 0x20

    shl-long v30, v30, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v32

    or-long v20, v30, v32

    .line 158
    .local v20, "breakDuration90khz":J
    const-wide/16 v30, 0x3e8

    mul-long v30, v30, v20

    const-wide/16 v32, 0x5a

    div-long v15, v30, v32

    .line 160
    .end local v20    # "breakDuration90khz":J
    .end local v26    # "firstByte":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v17

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v19

    .line 164
    .end local v23    # "durationFlag":Z
    .end local v28    # "headerByte":I
    :cond_7
    new-instance v5, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct/range {v5 .. v19}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v5

    .line 156
    .restart local v23    # "durationFlag":Z
    .restart local v26    # "firstByte":J
    .restart local v28    # "headerByte":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_5
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 170
    iget-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 171
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_3

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$200(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Landroid/os/Parcel;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "componentSpliceListSize":I
    .end local v1    # "i":I
    :cond_0
    move v2, v4

    .line 171
    goto :goto_0

    :cond_1
    move v2, v4

    .line 172
    goto :goto_1

    :cond_2
    move v2, v4

    .line 173
    goto :goto_2

    .line 179
    .restart local v0    # "componentSpliceListSize":I
    .restart local v1    # "i":I
    :cond_3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    if-eqz v2, :cond_4

    :goto_4
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return-void

    :cond_4
    move v3, v4

    .line 180
    goto :goto_4
.end method
