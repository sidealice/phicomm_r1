.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_cenc:I

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 47
    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 48
    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 49
    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 50
    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 51
    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 52
    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_cenc:I

    .line 53
    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    return-void
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 974
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    .line 975
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 976
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 977
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 978
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 979
    .local v2, "childType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 984
    .end local v0    # "childAtomPosition":I
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :goto_2
    return v0

    .line 977
    .restart local v0    # "childAtomPosition":I
    .restart local v1    # "childAtomSize":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 982
    .restart local v2    # "childType":I
    :cond_1
    add-int/2addr v0, v1

    .line 983
    goto :goto_0

    .line 984
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 25
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p8, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 838
    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 840
    const/16 v23, 0x0

    .line 841
    .local v23, "quickTimeSoundDescriptionVersion":I
    if-eqz p6, :cond_7

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v23

    .line 843
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 851
    :goto_0
    if-eqz v23, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    .line 852
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 853
    .local v9, "channelCount":I
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v10

    .line 856
    .local v10, "sampleRate":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_1

    .line 857
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 873
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v19

    .line 874
    .local v19, "childPosition":I
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 875
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v24

    .line 877
    .local v24, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v24, :cond_2

    .line 878
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 879
    if-nez p7, :cond_9

    const/16 p7, 0x0

    .line 881
    :goto_2
    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v4, v6, p9

    .line 883
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 891
    .end local v24    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3
    const/4 v5, 0x0

    .line 892
    .local v5, "mimeType":Ljava/lang/String;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 893
    const-string v5, "audio/ac3"

    .line 914
    :cond_4
    :goto_3
    const/16 v21, 0x0

    .line 915
    .local v21, "initializationData":[B
    :goto_4
    sub-int v4, v19, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_1b

    .line 916
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v17

    .line 918
    .local v17, "childAtomSize":I
    if-lez v17, :cond_15

    const/4 v4, 0x1

    :goto_5
    const-string v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 920
    .local v18, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v18

    if-eq v0, v4, :cond_5

    if-eqz p6, :cond_17

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_17

    .line 921
    :cond_5
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_16

    move/from16 v20, v19

    .line 923
    .local v20, "esdsAtomPosition":I
    :goto_6
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_6

    .line 925
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v22

    .line 926
    .local v22, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 927
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    .end local v21    # "initializationData":[B
    check-cast v21, [B

    .line 928
    .restart local v21    # "initializationData":[B
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 932
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v16

    .line 933
    .local v16, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 934
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 954
    .end local v16    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "esdsAtomPosition":I
    .end local v22    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_6
    :goto_7
    add-int v19, v19, v17

    .line 955
    goto :goto_4

    .line 845
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v9    # "channelCount":I
    .end local v10    # "sampleRate":I
    .end local v17    # "childAtomSize":I
    .end local v18    # "childAtomType":I
    .end local v19    # "childPosition":I
    .end local v21    # "initializationData":[B
    :cond_7
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    .line 859
    :cond_8
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_1c

    .line 860
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v10, v6

    .line 863
    .restart local v10    # "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 867
    .restart local v9    # "channelCount":I
    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    .line 879
    .restart local v19    # "childPosition":I
    .restart local v24    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_9
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 880
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p7

    goto/16 :goto_2

    .line 894
    .end local v24    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 895
    const-string v5, "audio/eac3"

    goto/16 :goto_3

    .line 896
    :cond_b
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 897
    const-string v5, "audio/vnd.dts"

    goto/16 :goto_3

    .line 898
    :cond_c
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_d

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    .line 899
    :cond_d
    const-string v5, "audio/vnd.dts.hd"

    goto/16 :goto_3

    .line 900
    :cond_e
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 901
    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_3

    .line 902
    :cond_f
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 903
    const-string v5, "audio/3gpp"

    goto/16 :goto_3

    .line 904
    :cond_10
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_11

    .line 905
    const-string v5, "audio/amr-wb"

    goto/16 :goto_3

    .line 906
    :cond_11
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_12

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_13

    .line 907
    :cond_12
    const-string v5, "audio/raw"

    goto/16 :goto_3

    .line 908
    :cond_13
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 909
    const-string v5, "audio/mpeg"

    goto/16 :goto_3

    .line 910
    :cond_14
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 911
    const-string v5, "audio/alac"

    goto/16 :goto_3

    .line 918
    .restart local v17    # "childAtomSize":I
    .restart local v21    # "initializationData":[B
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 922
    .restart local v18    # "childAtomType":I
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v20

    goto/16 :goto_6

    .line 937
    :cond_17
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_18

    .line 938
    add-int/lit8 v4, v19, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 939
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 941
    :cond_18
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_19

    .line 942
    add-int/lit8 v4, v19, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 943
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 945
    :cond_19
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_1a

    .line 946
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p7

    move-object/from16 v14, p5

    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_7

    .line 949
    :cond_1a
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v0, v18

    if-ne v0, v4, :cond_6

    .line 950
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 951
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 952
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto/16 :goto_7

    .line 957
    .end local v17    # "childAtomSize":I
    .end local v18    # "childAtomType":I
    :cond_1b
    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v4, :cond_1c

    if-eqz v5, :cond_1c

    .line 959
    const-string v4, "audio/raw"

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v11, 0x2

    .line 961
    .local v11, "pcmEncoding":I
    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    if-nez v21, :cond_1e

    const/4 v12, 0x0

    .line 963
    :goto_9
    const/4 v14, 0x0

    move-object/from16 v13, p7

    move-object/from16 v15, p5

    .line 961
    invoke-static/range {v4 .. v15}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 966
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v9    # "channelCount":I
    .end local v10    # "sampleRate":I
    .end local v11    # "pcmEncoding":I
    .end local v19    # "childPosition":I
    .end local v21    # "initializationData":[B
    :cond_1c
    return-void

    .line 960
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v9    # "channelCount":I
    .restart local v10    # "sampleRate":I
    .restart local v19    # "childPosition":I
    .restart local v21    # "initializationData":[B
    :cond_1d
    const/4 v11, -0x1

    goto :goto_8

    .line 963
    .restart local v11    # "pcmEncoding":I
    :cond_1e
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_9
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 12
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1094
    add-int/lit8 v2, p1, 0x8

    .line 1095
    .local v2, "childPosition":I
    const/4 v5, -0x1

    .line 1096
    .local v5, "schemeInformationBoxPosition":I
    const/4 v6, 0x0

    .line 1097
    .local v6, "schemeInformationBoxSize":I
    const/4 v7, 0x0

    .line 1098
    .local v7, "schemeType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1099
    .local v3, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v8, v2, p1

    if-ge v8, p2, :cond_3

    .line 1100
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1102
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1103
    .local v1, "childAtomType":I
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v8, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1113
    :cond_0
    :goto_1
    add-int/2addr v2, v0

    .line 1114
    goto :goto_0

    .line 1105
    :cond_1
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v8, :cond_2

    .line 1106
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1108
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1109
    :cond_2
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v8, :cond_0

    .line 1110
    move v5, v2

    .line 1111
    move v6, v0

    goto :goto_1

    .line 1116
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_3
    const-string v8, "cenc"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "cbc1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "cens"

    .line 1117
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "cbcs"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1118
    :cond_4
    if-eqz v3, :cond_5

    move v8, v9

    :goto_2
    const-string v11, "frma atom is mandatory"

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1119
    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    move v8, v9

    :goto_3
    const-string v11, "schi atom is mandatory"

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1121
    invoke-static {p0, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    .line 1123
    .local v4, "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    if-eqz v4, :cond_7

    :goto_4
    const-string v8, "tenc atom is mandatory"

    invoke-static {v9, v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1124
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1126
    .end local v4    # "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :goto_5
    return-object v8

    :cond_5
    move v8, v10

    .line 1118
    goto :goto_2

    :cond_6
    move v8, v10

    .line 1119
    goto :goto_3

    .restart local v4    # "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :cond_7
    move v9, v10

    .line 1123
    goto :goto_4

    .line 1126
    .end local v4    # "encryptionBox":Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    :cond_8
    const/4 v8, 0x0

    goto :goto_5
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 13
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 804
    if-eqz p0, :cond_0

    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .local v2, "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_1

    .line 805
    .end local v2    # "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_0
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 825
    :goto_0
    return-object v9

    .line 807
    .restart local v2    # "elst":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    :cond_1
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 808
    .local v3, "elstData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 809
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 810
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 811
    .local v8, "version":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 812
    .local v4, "entryCount":I
    new-array v0, v4, [J

    .line 813
    .local v0, "editListDurations":[J
    new-array v1, v4, [J

    .line 814
    .local v1, "editListMediaTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 815
    if-ne v8, v12, :cond_2

    .line 816
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_2
    aput-wide v10, v0, v6

    .line 817
    if-ne v8, v12, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_3
    aput-wide v10, v1, v6

    .line 818
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 819
    .local v7, "mediaRateInteger":I
    if-eq v7, v12, :cond_4

    .line 821
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 816
    .end local v7    # "mediaRateInteger":I
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_2

    .line 817
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_3

    .line 823
    .restart local v7    # "mediaRateInteger":I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 814
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 825
    .end local v7    # "mediaRateInteger":I
    :cond_5
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 991
    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 993
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 994
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 995
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 997
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 998
    .local v0, "flags":I
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    .line 999
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1001
    :cond_0
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1004
    :cond_1
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_2

    .line 1005
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1009
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1010
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 1015
    .local v4, "objectTypeIndication":I
    sparse-switch v4, :sswitch_data_0

    .line 1053
    const/4 v3, 0x0

    .line 1057
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1060
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1061
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    .line 1062
    .local v2, "initializationDataSize":I
    new-array v1, v2, [B

    .line 1063
    .local v1, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1064
    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .end local v1    # "initializationData":[B
    .end local v2    # "initializationDataSize":I
    :goto_1
    return-object v5

    .line 1018
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_0
    const-string v3, "video/mpeg2"

    .line 1019
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1021
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_1
    const-string v3, "video/mp4v-es"

    .line 1022
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1024
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_2
    const-string v3, "video/avc"

    .line 1025
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1027
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string v3, "video/hevc"

    .line 1028
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1030
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_4
    const-string v3, "audio/mpeg"

    .line 1031
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 1036
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_5
    const-string v3, "audio/mp4a-latm"

    .line 1037
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1039
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_6
    const-string v3, "audio/ac3"

    .line 1040
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1042
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_7
    const-string v3, "audio/eac3"

    .line 1043
    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 1046
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_8
    const-string v3, "audio/vnd.dts"

    .line 1047
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 1050
    .end local v3    # "mimeType":Ljava/lang/String;
    :sswitch_9
    const-string v3, "audio/vnd.dts.hd"

    .line 1051
    .restart local v3    # "mimeType":Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 1015
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_5
        0x60 -> :sswitch_0
        0x61 -> :sswitch_0
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0xa5 -> :sswitch_6
        0xa6 -> :sswitch_7
        0xa9 -> :sswitch_8
        0xaa -> :sswitch_9
        0xab -> :sswitch_9
        0xac -> :sswitch_8
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1190
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1191
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1193
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1195
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2
    .param p0, "hdlr"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 558
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 560
    .local v0, "trackType":I
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne v0, v1, :cond_0

    .line 561
    const/4 v1, 0x1

    .line 570
    :goto_0
    return v1

    .line 562
    :cond_0
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne v0, v1, :cond_1

    .line 563
    const/4 v1, 0x2

    goto :goto_0

    .line 564
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne v0, v1, :cond_3

    .line 566
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 567
    :cond_3
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne v0, v1, :cond_4

    .line 568
    const/4 v1, 0x4

    goto :goto_0

    .line 570
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 3
    .param p0, "ilst"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .prologue
    .line 467
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/metadata/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 470
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 471
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 8
    .param p0, "mdhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 582
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 583
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 584
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 585
    .local v3, "version":I
    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 587
    .local v4, "timescale":J
    if-nez v3, :cond_0

    const/4 v7, 0x4

    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 588
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 589
    .local v2, "languageCode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "language":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 585
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "languageCode":I
    .end local v4    # "timescale":J
    :cond_1
    const/16 v6, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .param p0, "meta"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "limit"    # I

    .prologue
    .line 452
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 453
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 455
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 456
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 457
    .local v2, "atomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    .line 458
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 459
    add-int v3, v0, v1

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v3

    .line 463
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    :goto_1
    return-object v3

    .line 461
    .restart local v0    # "atomPosition":I
    .restart local v1    # "atomSize":I
    .restart local v2    # "atomType":I
    :cond_0
    add-int/lit8 v3, v1, -0x8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 463
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mvhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 485
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 487
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 488
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 488
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 829
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 830
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 831
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 832
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 1172
    add-int/lit8 v2, p1, 0x8

    .line 1173
    .local v2, "childPosition":I
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_1

    .line 1174
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1176
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1177
    .local v1, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v1, v3, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v4, v2, v0

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1182
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :goto_1
    return-object v3

    .line 1180
    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    :cond_0
    add-int/2addr v2, v0

    .line 1181
    goto :goto_0

    .line 1182
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 6
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 1075
    .local v2, "childPosition":I
    :goto_0
    sub-int v4, v2, p1

    if-ge v4, p2, :cond_2

    .line 1076
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1078
    .local v0, "childAtomSize":I
    if-lez v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    const-string v5, "childAtomSize should be positive"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1080
    .local v1, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v1, v4, :cond_1

    .line 1081
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1083
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 1089
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :goto_2
    return-object v3

    .line 1078
    .restart local v0    # "childAtomSize":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1087
    .restart local v1    # "childAtomType":I
    :cond_1
    add-int/2addr v2, v0

    .line 1088
    goto :goto_0

    .line 1089
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 16
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .prologue
    .line 1132
    add-int/lit8 v11, p1, 0x8

    .line 1133
    .local v11, "childPosition":I
    :goto_0
    sub-int v1, v11, p1

    move/from16 v0, p2

    if-ge v1, v0, :cond_4

    .line 1134
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 1136
    .local v9, "childAtomSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 1137
    .local v10, "childAtomType":I
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v10, v1, :cond_3

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 1139
    .local v13, "fullAtom":I
    invoke-static {v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v15

    .line 1140
    .local v15, "version":I
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, "defaultCryptByteBlock":I
    const/4 v7, 0x0

    .line 1143
    .local v7, "defaultSkipByteBlock":I
    if-nez v15, :cond_1

    .line 1144
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1150
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    .line 1151
    .local v2, "defaultIsProtected":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 1152
    .local v4, "defaultPerSampleIvSize":I
    const/16 v1, 0x10

    new-array v5, v1, [B

    .line 1153
    .local v5, "defaultKeyId":[B
    const/4 v1, 0x0

    array-length v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1154
    const/4 v8, 0x0

    .line 1155
    .local v8, "constantIv":[B
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 1157
    .local v12, "constantIvSize":I
    new-array v8, v12, [B

    .line 1158
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1160
    .end local v12    # "constantIvSize":I
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 1165
    .end local v2    # "defaultIsProtected":Z
    .end local v4    # "defaultPerSampleIvSize":I
    .end local v5    # "defaultKeyId":[B
    .end local v6    # "defaultCryptByteBlock":I
    .end local v7    # "defaultSkipByteBlock":I
    .end local v8    # "constantIv":[B
    .end local v9    # "childAtomSize":I
    .end local v10    # "childAtomType":I
    .end local v13    # "fullAtom":I
    .end local v15    # "version":I
    :goto_3
    return-object v1

    .line 1146
    .restart local v6    # "defaultCryptByteBlock":I
    .restart local v7    # "defaultSkipByteBlock":I
    .restart local v9    # "childAtomSize":I
    .restart local v10    # "childAtomType":I
    .restart local v13    # "fullAtom":I
    .restart local v15    # "version":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 1147
    .local v14, "patternByte":I
    and-int/lit16 v1, v14, 0xf0

    shr-int/lit8 v6, v1, 0x4

    .line 1148
    and-int/lit8 v7, v14, 0xf

    goto :goto_1

    .line 1150
    .end local v14    # "patternByte":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1163
    .end local v6    # "defaultCryptByteBlock":I
    .end local v7    # "defaultSkipByteBlock":I
    .end local v13    # "fullAtom":I
    .end local v15    # "version":I
    :cond_3
    add-int/2addr v11, v9

    .line 1164
    goto :goto_0

    .line 1165
    .end local v9    # "childAtomSize":I
    .end local v10    # "childAtomType":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 88
    .param p0, "track"    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 118
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v79

    .line 119
    .local v79, "stszAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v79, :cond_0

    .line 120
    new-instance v74, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    move-object/from16 v0, v74

    move-object/from16 v1, v79

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 129
    .local v74, "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface/range {v74 .. v74}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v72

    .line 130
    .local v72, "sampleCount":I
    if-nez v72, :cond_2

    .line 131
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v12, 0x0

    new-array v5, v12, [J

    const/4 v12, 0x0

    new-array v6, v12, [I

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-array v8, v12, [J

    const/4 v12, 0x0

    new-array v9, v12, [I

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 419
    :goto_1
    return-object v4

    .line 122
    .end local v72    # "sampleCount":I
    .end local v74    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    :cond_0
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v81

    .line 123
    .local v81, "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v81, :cond_1

    .line 124
    new-instance v4, Lcom/google/android/exoplayer2/ParserException;

    const-string v12, "Track has no sample table size information"

    invoke-direct {v4, v12}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_1
    new-instance v74, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    move-object/from16 v0, v74

    move-object/from16 v1, v81

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .restart local v74    # "sampleSizeBox":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;
    goto :goto_0

    .line 135
    .end local v81    # "stz2Atom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v72    # "sampleCount":I
    :cond_2
    const/16 v20, 0x0

    .line 136
    .local v20, "chunkOffsetsAreLongs":Z
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 137
    .local v21, "chunkOffsetsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-nez v21, :cond_3

    .line 138
    const/16 v20, 0x1

    .line 139
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 141
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v19, v0

    .line 143
    .local v19, "chunkOffsets":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v76, v0

    .line 145
    .local v76, "stsc":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v80, v0

    .line 147
    .local v80, "stts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v78

    .line 148
    .local v78, "stssAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v78, :cond_6

    move-object/from16 v0, v78

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v77, v0

    .line 150
    .local v77, "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_2
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v27

    .line 151
    .local v27, "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v26, v0

    .line 154
    .local v26, "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :goto_3
    new-instance v18, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v18

    move-object/from16 v1, v76

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    .line 157
    .local v18, "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    const/16 v4, 0xc

    move-object/from16 v0, v80

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 158
    invoke-virtual/range {v80 .. v80}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v70, v4, -0x1

    .line 159
    .local v70, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v80 .. v80}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v66

    .line 160
    .local v66, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v80 .. v80}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v84

    .line 163
    .local v84, "timestampDeltaInTimeUnits":I
    const/16 v67, 0x0

    .line 164
    .local v67, "remainingSamplesAtTimestampOffset":I
    const/16 v71, 0x0

    .line 165
    .local v71, "remainingTimestampOffsetChanges":I
    const/16 v85, 0x0

    .line 166
    .local v85, "timestampOffset":I
    if-eqz v26, :cond_4

    .line 167
    const/16 v4, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 168
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v71

    .line 171
    :cond_4
    const/16 v55, -0x1

    .line 172
    .local v55, "nextSynchronizationSampleIndex":I
    const/16 v69, 0x0

    .line 173
    .local v69, "remainingSynchronizationSamples":I
    if-eqz v77, :cond_5

    .line 174
    const/16 v4, 0xc

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 175
    invoke-virtual/range {v77 .. v77}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v69

    .line 176
    if-lez v69, :cond_8

    .line 177
    invoke-virtual/range {v77 .. v77}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v55, v4, -0x1

    .line 185
    :cond_5
    :goto_4
    invoke-interface/range {v74 .. v74}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v12, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 186
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v70, :cond_9

    if-nez v71, :cond_9

    if-nez v69, :cond_9

    const/16 v48, 0x1

    .line 192
    .local v48, "isRechunkable":Z
    :goto_5
    const/4 v7, 0x0

    .line 195
    .local v7, "maximumSize":I
    const-wide/16 v86, 0x0

    .line 197
    .local v86, "timestampTimeUnits":J
    if-nez v48, :cond_18

    .line 198
    move/from16 v0, v72

    new-array v5, v0, [J

    .line 199
    .local v5, "offsets":[J
    move/from16 v0, v72

    new-array v6, v0, [I

    .line 200
    .local v6, "sizes":[I
    move/from16 v0, v72

    new-array v8, v0, [J

    .line 201
    .local v8, "timestamps":[J
    move/from16 v0, v72

    new-array v9, v0, [I

    .line 202
    .local v9, "flags":[I
    const-wide/16 v56, 0x0

    .line 203
    .local v56, "offset":J
    const/16 v68, 0x0

    .line 205
    .local v68, "remainingSamplesInChunk":I
    const/16 v47, 0x0

    .local v47, "i":I
    :goto_6
    move/from16 v0, v47

    move/from16 v1, v72

    if-ge v0, v1, :cond_11

    .line 207
    :goto_7
    if-nez v68, :cond_a

    .line 208
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 209
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v56, v0

    .line 210
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v68, v0

    goto :goto_7

    .line 148
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v7    # "maximumSize":I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v18    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v26    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v27    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .end local v47    # "i":I
    .end local v48    # "isRechunkable":Z
    .end local v55    # "nextSynchronizationSampleIndex":I
    .end local v56    # "offset":J
    .end local v66    # "remainingSamplesAtTimestampDelta":I
    .end local v67    # "remainingSamplesAtTimestampOffset":I
    .end local v68    # "remainingSamplesInChunk":I
    .end local v69    # "remainingSynchronizationSamples":I
    .end local v70    # "remainingTimestampDeltaChanges":I
    .end local v71    # "remainingTimestampOffsetChanges":I
    .end local v77    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .end local v84    # "timestampDeltaInTimeUnits":I
    .end local v85    # "timestampOffset":I
    .end local v86    # "timestampTimeUnits":J
    :cond_6
    const/16 v77, 0x0

    goto/16 :goto_2

    .line 151
    .restart local v27    # "cttsAtom":Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .restart local v77    # "stss":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 180
    .restart local v18    # "chunkIterator":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v26    # "ctts":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .restart local v55    # "nextSynchronizationSampleIndex":I
    .restart local v66    # "remainingSamplesAtTimestampDelta":I
    .restart local v67    # "remainingSamplesAtTimestampOffset":I
    .restart local v69    # "remainingSynchronizationSamples":I
    .restart local v70    # "remainingTimestampDeltaChanges":I
    .restart local v71    # "remainingTimestampOffsetChanges":I
    .restart local v84    # "timestampDeltaInTimeUnits":I
    .restart local v85    # "timestampOffset":I
    :cond_8
    const/16 v77, 0x0

    goto :goto_4

    .line 186
    :cond_9
    const/16 v48, 0x0

    goto :goto_5

    .line 214
    .restart local v5    # "offsets":[J
    .restart local v6    # "sizes":[I
    .restart local v7    # "maximumSize":I
    .restart local v8    # "timestamps":[J
    .restart local v9    # "flags":[I
    .restart local v47    # "i":I
    .restart local v48    # "isRechunkable":Z
    .restart local v56    # "offset":J
    .restart local v68    # "remainingSamplesInChunk":I
    .restart local v86    # "timestampTimeUnits":J
    :cond_a
    if-eqz v26, :cond_c

    .line 215
    :goto_8
    if-nez v67, :cond_b

    if-lez v71, :cond_b

    .line 216
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v67

    .line 222
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v85

    .line 223
    add-int/lit8 v71, v71, -0x1

    goto :goto_8

    .line 225
    :cond_b
    add-int/lit8 v67, v67, -0x1

    .line 228
    :cond_c
    aput-wide v56, v5, v47

    .line 229
    invoke-interface/range {v74 .. v74}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v4

    aput v4, v6, v47

    .line 230
    aget v4, v6, v47

    if-le v4, v7, :cond_d

    .line 231
    aget v7, v6, v47

    .line 233
    :cond_d
    move/from16 v0, v85

    int-to-long v12, v0

    add-long v12, v12, v86

    aput-wide v12, v8, v47

    .line 236
    if-nez v77, :cond_10

    const/4 v4, 0x1

    :goto_9
    aput v4, v9, v47

    .line 237
    move/from16 v0, v47

    move/from16 v1, v55

    if-ne v0, v1, :cond_e

    .line 238
    const/4 v4, 0x1

    aput v4, v9, v47

    .line 239
    add-int/lit8 v69, v69, -0x1

    .line 240
    if-lez v69, :cond_e

    .line 241
    invoke-virtual/range {v77 .. v77}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v55, v4, -0x1

    .line 246
    :cond_e
    move/from16 v0, v84

    int-to-long v12, v0

    add-long v86, v86, v12

    .line 247
    add-int/lit8 v66, v66, -0x1

    .line 248
    if-nez v66, :cond_f

    if-lez v70, :cond_f

    .line 249
    invoke-virtual/range {v80 .. v80}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v66

    .line 256
    invoke-virtual/range {v80 .. v80}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v84

    .line 257
    add-int/lit8 v70, v70, -0x1

    .line 260
    :cond_f
    aget v4, v6, v47

    int-to-long v12, v4

    add-long v56, v56, v12

    .line 261
    add-int/lit8 v68, v68, -0x1

    .line 205
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_6

    .line 236
    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    .line 264
    :cond_11
    if-nez v67, :cond_12

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 266
    :goto_b
    if-lez v71, :cond_14

    .line 267
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 268
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 269
    add-int/lit8 v71, v71, -0x1

    goto :goto_b

    .line 264
    :cond_12
    const/4 v4, 0x0

    goto :goto_a

    .line 267
    :cond_13
    const/4 v4, 0x0

    goto :goto_c

    .line 274
    :cond_14
    if-nez v69, :cond_15

    if-nez v66, :cond_15

    if-nez v68, :cond_15

    if-eqz v70, :cond_16

    .line 276
    :cond_15
    const-string v4, "AtomParsers"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Inconsistent stbl box for track "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": remainingSynchronizationSamples "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v69

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v66

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", remainingSamplesInChunk "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v68

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", remainingTimestampDeltaChanges "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v70

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v47    # "i":I
    .end local v56    # "offset":J
    .end local v68    # "remainingSamplesInChunk":I
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 302
    :cond_17
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 303
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 283
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    :cond_18
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [J

    move-object/from16 v22, v0

    .line 284
    .local v22, "chunkOffsetsBytes":[J
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 285
    .local v23, "chunkSampleCounts":[I
    :goto_e
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 286
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v12, v22, v4

    .line 287
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v12, v23, v4

    goto :goto_e

    .line 289
    :cond_19
    invoke-interface/range {v74 .. v74}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v43

    .line 290
    .local v43, "fixedSampleSize":I
    move/from16 v0, v84

    int-to-long v12, v0

    move/from16 v0, v43

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v12, v13}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v59

    .line 292
    .local v59, "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    move-object/from16 v0, v59

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 293
    .restart local v5    # "offsets":[J
    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 294
    .restart local v6    # "sizes":[I
    move-object/from16 v0, v59

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 295
    move-object/from16 v0, v59

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 296
    .restart local v8    # "timestamps":[J
    move-object/from16 v0, v59

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .restart local v9    # "flags":[I
    goto :goto_d

    .line 312
    .end local v22    # "chunkOffsetsBytes":[J
    .end local v23    # "chunkSampleCounts":[I
    .end local v43    # "fixedSampleSize":I
    .end local v59    # "rechunkedResults":Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    array-length v4, v8

    const/4 v12, 0x2

    if-lt v4, v12, :cond_1c

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v12, 0x0

    aget-wide v30, v4, v12

    .line 318
    .local v30, "editStartTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v10, v4, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v28, v30, v12

    .line 320
    .local v28, "editEndTime":J
    move-wide/from16 v50, v86

    .line 321
    .local v50, "lastSampleEndTime":J
    const/4 v4, 0x0

    aget-wide v12, v8, v4

    cmp-long v4, v12, v30

    if-gtz v4, :cond_1c

    const/4 v4, 0x1

    aget-wide v12, v8, v4

    cmp-long v4, v30, v12

    if-gez v4, :cond_1c

    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    aget-wide v12, v8, v4

    cmp-long v4, v12, v28

    if-gez v4, :cond_1c

    cmp-long v4, v28, v50

    if-gtz v4, :cond_1c

    .line 323
    sub-long v60, v50, v28

    .line 324
    .local v60, "paddingTimeUnits":J
    const/4 v4, 0x0

    aget-wide v12, v8, v4

    sub-long v10, v30, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v38

    .line 326
    .local v38, "encoderDelay":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v12, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v10, v60

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v40

    .line 328
    .local v40, "encoderPadding":J
    const-wide/16 v12, 0x0

    cmp-long v4, v38, v12

    if-nez v4, :cond_1b

    const-wide/16 v12, 0x0

    cmp-long v4, v40, v12

    if-eqz v4, :cond_1c

    :cond_1b
    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v38, v12

    if-gtz v4, :cond_1c

    const-wide/32 v12, 0x7fffffff

    cmp-long v4, v40, v12

    if-gtz v4, :cond_1c

    .line 330
    move-wide/from16 v0, v38

    long-to-int v4, v0

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 331
    move-wide/from16 v0, v40

    long-to-int v4, v0

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 332
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 333
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 338
    .end local v28    # "editEndTime":J
    .end local v30    # "editStartTime":J
    .end local v38    # "encoderDelay":J
    .end local v40    # "encoderPadding":J
    .end local v50    # "lastSampleEndTime":J
    .end local v60    # "paddingTimeUnits":J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_1e

    .line 342
    const/16 v47, 0x0

    .restart local v47    # "i":I
    :goto_f
    array-length v4, v8

    move/from16 v0, v47

    if-ge v0, v4, :cond_1d

    .line 343
    aget-wide v12, v8, v47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v47

    .line 342
    add-int/lit8 v47, v47, 0x1

    goto :goto_f

    .line 346
    :cond_1d
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 350
    .end local v47    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_20

    const/16 v58, 0x1

    .line 353
    .local v58, "omitClippedSample":Z
    :goto_10
    const/16 v35, 0x0

    .line 354
    .local v35, "editedSampleCount":I
    const/16 v54, 0x0

    .line 355
    .local v54, "nextSampleIndex":I
    const/16 v24, 0x0

    .line 356
    .local v24, "copyMetadata":Z
    const/16 v47, 0x0

    .restart local v47    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_22

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v52, v4, v47

    .line 358
    .local v52, "mediaTime":J
    const-wide/16 v12, -0x1

    cmp-long v4, v52, v12

    if-eqz v4, :cond_1f

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v47

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 361
    .local v10, "duration":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v52

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v75

    .line 362
    .local v75, "startIndex":I
    add-long v12, v52, v10

    const/4 v4, 0x0

    move/from16 v0, v58

    invoke-static {v8, v12, v13, v0, v4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v42

    .line 364
    .local v42, "endIndex":I
    sub-int v4, v42, v75

    add-int v35, v35, v4

    .line 365
    move/from16 v0, v54

    move/from16 v1, v75

    if-eq v0, v1, :cond_21

    const/4 v4, 0x1

    :goto_12
    or-int v24, v24, v4

    .line 366
    move/from16 v54, v42

    .line 356
    .end local v10    # "duration":J
    .end local v42    # "endIndex":I
    .end local v75    # "startIndex":I
    :cond_1f
    add-int/lit8 v47, v47, 0x1

    goto :goto_11

    .line 350
    .end local v24    # "copyMetadata":Z
    .end local v35    # "editedSampleCount":I
    .end local v47    # "i":I
    .end local v52    # "mediaTime":J
    .end local v54    # "nextSampleIndex":I
    .end local v58    # "omitClippedSample":Z
    :cond_20
    const/16 v58, 0x0

    goto :goto_10

    .line 365
    .restart local v10    # "duration":J
    .restart local v24    # "copyMetadata":Z
    .restart local v35    # "editedSampleCount":I
    .restart local v42    # "endIndex":I
    .restart local v47    # "i":I
    .restart local v52    # "mediaTime":J
    .restart local v54    # "nextSampleIndex":I
    .restart local v58    # "omitClippedSample":Z
    .restart local v75    # "startIndex":I
    :cond_21
    const/4 v4, 0x0

    goto :goto_12

    .line 369
    .end local v10    # "duration":J
    .end local v42    # "endIndex":I
    .end local v52    # "mediaTime":J
    .end local v75    # "startIndex":I
    :cond_22
    move/from16 v0, v35

    move/from16 v1, v72

    if-eq v0, v1, :cond_25

    const/4 v4, 0x1

    :goto_13
    or-int v24, v24, v4

    .line 372
    if-eqz v24, :cond_26

    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v34, v0

    .line 373
    .local v34, "editedOffsets":[J
    :goto_14
    if-eqz v24, :cond_27

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 374
    .local v36, "editedSizes":[I
    :goto_15
    if-eqz v24, :cond_28

    const/16 v33, 0x0

    .line 375
    .local v33, "editedMaximumSize":I
    :goto_16
    if-eqz v24, :cond_29

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 376
    .local v32, "editedFlags":[I
    :goto_17
    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 377
    .local v37, "editedTimestamps":[J
    const-wide/16 v62, 0x0

    .line 378
    .local v62, "pts":J
    const/16 v73, 0x0

    .line 379
    .local v73, "sampleIndex":I
    const/16 v47, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_2b

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v52, v4, v47

    .line 381
    .restart local v52    # "mediaTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v47

    .line 382
    .restart local v10    # "duration":J
    const-wide/16 v12, -0x1

    cmp-long v4, v52, v12

    if-eqz v4, :cond_2a

    .line 383
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v44, v52, v12

    .line 385
    .local v44, "endMediaTime":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v52

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v75

    .line 386
    .restart local v75    # "startIndex":I
    const/4 v4, 0x0

    move-wide/from16 v0, v44

    move/from16 v2, v58

    invoke-static {v8, v0, v1, v2, v4}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v42

    .line 387
    .restart local v42    # "endIndex":I
    if-eqz v24, :cond_23

    .line 388
    sub-int v25, v42, v75

    .line 389
    .local v25, "count":I
    move/from16 v0, v75

    move-object/from16 v1, v34

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move/from16 v0, v75

    move-object/from16 v1, v36

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    move/from16 v0, v75

    move-object/from16 v1, v32

    move/from16 v2, v73

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    .end local v25    # "count":I
    :cond_23
    move/from16 v49, v75

    .local v49, "j":I
    :goto_19
    move/from16 v0, v49

    move/from16 v1, v42

    if-ge v0, v1, :cond_2a

    .line 394
    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v62

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v64

    .line 395
    .local v64, "ptsUs":J
    aget-wide v12, v8, v49

    sub-long v12, v12, v52

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v82

    .line 397
    .local v82, "timeInSegmentUs":J
    add-long v12, v64, v82

    aput-wide v12, v37, v73

    .line 398
    if-eqz v24, :cond_24

    aget v4, v36, v73

    move/from16 v0, v33

    if-le v4, v0, :cond_24

    .line 399
    aget v33, v6, v49

    .line 401
    :cond_24
    add-int/lit8 v73, v73, 0x1

    .line 393
    add-int/lit8 v49, v49, 0x1

    goto :goto_19

    .line 369
    .end local v10    # "duration":J
    .end local v32    # "editedFlags":[I
    .end local v33    # "editedMaximumSize":I
    .end local v34    # "editedOffsets":[J
    .end local v36    # "editedSizes":[I
    .end local v37    # "editedTimestamps":[J
    .end local v42    # "endIndex":I
    .end local v44    # "endMediaTime":J
    .end local v49    # "j":I
    .end local v52    # "mediaTime":J
    .end local v62    # "pts":J
    .end local v64    # "ptsUs":J
    .end local v73    # "sampleIndex":I
    .end local v75    # "startIndex":I
    .end local v82    # "timeInSegmentUs":J
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_26
    move-object/from16 v34, v5

    .line 372
    goto/16 :goto_14

    .restart local v34    # "editedOffsets":[J
    :cond_27
    move-object/from16 v36, v6

    .line 373
    goto/16 :goto_15

    .restart local v36    # "editedSizes":[I
    :cond_28
    move/from16 v33, v7

    .line 374
    goto/16 :goto_16

    .restart local v33    # "editedMaximumSize":I
    :cond_29
    move-object/from16 v32, v9

    .line 375
    goto/16 :goto_17

    .line 404
    .restart local v10    # "duration":J
    .restart local v32    # "editedFlags":[I
    .restart local v37    # "editedTimestamps":[J
    .restart local v52    # "mediaTime":J
    .restart local v62    # "pts":J
    .restart local v73    # "sampleIndex":I
    :cond_2a
    add-long v62, v62, v10

    .line 379
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_18

    .line 407
    .end local v10    # "duration":J
    .end local v52    # "mediaTime":J
    :cond_2b
    const/16 v46, 0x0

    .line 408
    .local v46, "hasSyncSample":Z
    const/16 v47, 0x0

    :goto_1a
    move-object/from16 v0, v32

    array-length v4, v0

    move/from16 v0, v47

    if-ge v0, v4, :cond_2d

    if-nez v46, :cond_2d

    .line 409
    aget v4, v32, v47

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    :goto_1b
    or-int v46, v46, v4

    .line 408
    add-int/lit8 v47, v47, 0x1

    goto :goto_1a

    .line 409
    :cond_2c
    const/4 v4, 0x0

    goto :goto_1b

    .line 411
    :cond_2d
    if-nez v46, :cond_2e

    .line 414
    const-string v4, "AtomParsers"

    const-string v12, "Ignoring edit list: Edited sample sequence does not contain a sync sample."

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 416
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 419
    :cond_2e
    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v34

    move-object/from16 v14, v36

    move/from16 v15, v33

    move-object/from16 v16, v37

    move-object/from16 v17, v32

    invoke-direct/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_1
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 21
    .param p0, "stsd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 608
    const/16 v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 610
    .local v20, "numberOfEntries":I
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 611
    .local v8, "out":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 613
    .local v3, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 614
    .local v4, "childAtomSize":I
    if-lez v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v5, "childAtomSize should be positive"

    invoke-static {v1, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 616
    .local v2, "childAtomType":I
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v2, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v2, v1, :cond_3

    :cond_0
    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    .line 621
    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 641
    :cond_1
    :goto_2
    add-int v1, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 611
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 614
    .end local v2    # "childAtomType":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 623
    .restart local v2    # "childAtomType":I
    :cond_3
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v2, v1, :cond_4

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v2, v1, :cond_5

    :cond_4
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move/from16 v14, p1

    move-object/from16 v15, p3

    move/from16 v16, p5

    move-object/from16 v17, p4

    move-object/from16 v18, v8

    move/from16 v19, v9

    .line 630
    invoke-static/range {v10 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    .line 632
    :cond_5
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq v2, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v2, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v2, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v2, v1, :cond_6

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v2, v1, :cond_7

    :cond_6
    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object v7, v8

    .line 635
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_2

    .line 637
    :cond_7
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v2, v1, :cond_1

    .line 638
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "application/x-camera-motion"

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v10, 0x0

    invoke-static {v1, v5, v6, v7, v10}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 643
    .end local v2    # "childAtomType":I
    .end local v3    # "childStartPosition":I
    .end local v4    # "childAtomSize":I
    :cond_8
    return-object v8
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 15
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 648
    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 651
    const/4 v12, 0x0

    .line 652
    .local v12, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v10, 0x7fffffffffffffffL

    .line 655
    .local v10, "subsampleOffsetUs":J
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 656
    const-string v3, "application/ttml+xml"

    .line 677
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    .line 679
    return-void

    .line 657
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 658
    const-string v3, "application/x-quicktime-tx3g"

    .line 659
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, p3, -0x8

    add-int/lit8 v14, v2, -0x8

    .line 660
    .local v14, "sampleDescriptionLength":I
    new-array v13, v14, [B

    .line 661
    .local v13, "sampleDescriptionData":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v13, v2, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 662
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 663
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v13    # "sampleDescriptionData":[B
    .end local v14    # "sampleDescriptionLength":I
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 664
    const-string v3, "application/x-mp4-vtt"

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 665
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 666
    const-string v3, "application/ttml+xml"

    .line 667
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 668
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 670
    const-string v3, "application/x-mp4-cea-608"

    .line 671
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p6

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    goto :goto_0

    .line 674
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 20
    .param p0, "tkhd"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 498
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 500
    .local v12, "fullAtom":I
    invoke-static {v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    .line 502
    .local v16, "version":I
    if-nez v16, :cond_2

    const/16 v17, 0x8

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 505
    .local v15, "trackId":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 506
    const/4 v10, 0x1

    .line 507
    .local v10, "durationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 508
    .local v9, "durationPosition":I
    if-nez v16, :cond_3

    const/4 v8, 0x4

    .line 509
    .local v8, "durationByteCount":I
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 511
    const/4 v10, 0x0

    .line 516
    :cond_0
    if-eqz v10, :cond_5

    .line 517
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 518
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 528
    .local v6, "duration":J
    :cond_1
    :goto_3
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 530
    .local v2, "a00":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 531
    .local v3, "a01":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 533
    .local v4, "a10":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 536
    .local v5, "a11":I
    const/high16 v11, 0x10000

    .line 537
    .local v11, "fixedOne":I
    if-nez v2, :cond_7

    if-ne v3, v11, :cond_7

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    if-nez v5, :cond_7

    .line 538
    const/16 v14, 0x5a

    .line 548
    .local v14, "rotationDegrees":I
    :goto_4
    new-instance v17, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    .line 502
    .end local v2    # "a00":I
    .end local v3    # "a01":I
    .end local v4    # "a10":I
    .end local v5    # "a11":I
    .end local v6    # "duration":J
    .end local v8    # "durationByteCount":I
    .end local v9    # "durationPosition":I
    .end local v10    # "durationUnknown":Z
    .end local v11    # "fixedOne":I
    .end local v13    # "i":I
    .end local v14    # "rotationDegrees":I
    .end local v15    # "trackId":I
    :cond_2
    const/16 v17, 0x10

    goto :goto_0

    .line 508
    .restart local v9    # "durationPosition":I
    .restart local v10    # "durationUnknown":Z
    .restart local v15    # "trackId":I
    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    .line 509
    .restart local v8    # "durationByteCount":I
    .restart local v13    # "i":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 520
    :cond_5
    if-nez v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 521
    .restart local v6    # "duration":J
    :goto_5
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-nez v17, :cond_1

    .line 524
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 520
    .end local v6    # "duration":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_5

    .line 539
    .restart local v2    # "a00":I
    .restart local v3    # "a01":I
    .restart local v4    # "a10":I
    .restart local v5    # "a11":I
    .restart local v6    # "duration":J
    .restart local v11    # "fixedOne":I
    :cond_7
    if-nez v2, :cond_8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    if-ne v4, v11, :cond_8

    if-nez v5, :cond_8

    .line 540
    const/16 v14, 0x10e

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 541
    .end local v14    # "rotationDegrees":I
    :cond_8
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 542
    const/16 v14, 0xb4

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 545
    .end local v14    # "rotationDegrees":I
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "rotationDegrees":I
    goto :goto_4
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 32
    .param p0, "trak"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 70
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v26

    .line 71
    .local v26, "mdia":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v30

    .line 72
    .local v30, "trackType":I
    const/4 v2, -0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_0

    .line 73
    const/4 v9, 0x0

    .line 101
    :goto_0
    return-object v9

    .line 76
    :cond_0
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v29

    .line 77
    .local v29, "tkhdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 78
    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide p2

    .line 80
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    .line 82
    .local v6, "movieTimescale":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 83
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    .local v16, "durationUs":J
    :goto_1
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 88
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v27

    .line 90
    .local v27, "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v25

    .line 91
    .local v25, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    .line 92
    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    move-object/from16 v0, v25

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p6

    .line 91
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v28

    .line 93
    .local v28, "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    const/16 v22, 0x0

    .line 94
    .local v22, "editListDurations":[J
    const/16 v23, 0x0

    .line 95
    .local v23, "editListMediaTimes":[J
    if-nez p5, :cond_2

    .line 96
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v24

    .line 97
    .local v24, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    .end local v22    # "editListDurations":[J
    check-cast v22, [J

    .line 98
    .restart local v22    # "editListDurations":[J
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "editListMediaTimes":[J
    check-cast v23, [J

    .line 100
    .end local v24    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .restart local v23    # "editListMediaTimes":[J
    :cond_2
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v2, :cond_4

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 85
    .end local v16    # "durationUs":J
    .end local v22    # "editListDurations":[J
    .end local v23    # "editListMediaTimes":[J
    .end local v25    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v27    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .end local v28    # "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    :cond_3
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    .restart local v16    # "durationUs":J
    goto :goto_1

    .line 100
    .restart local v22    # "editListDurations":[J
    .restart local v23    # "editListMediaTimes":[J
    .restart local v25    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v27    # "stbl":Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;
    .restart local v28    # "stsdData":Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    :cond_4
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 101
    invoke-static/range {v29 .. v29}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move/from16 v19, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v21, v0

    move/from16 v11, v30

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 431
    if-eqz p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-object v4

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 437
    .local v3, "udtaData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 438
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 439
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 440
    .local v0, "atomPosition":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 441
    .local v1, "atomSize":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 442
    .local v2, "atomType":I
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v2, v5, :cond_2

    .line 443
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 444
    add-int v4, v0, v1

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    goto :goto_0

    .line 446
    :cond_2
    add-int/lit8 v5, v1, -0x8

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 29
    .param p0, "parent"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p7, "out"    # Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 684
    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 686
    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 688
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 689
    .local v9, "height":I
    const/16 v26, 0x0

    .line 690
    .local v26, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v13, 0x3f800000    # 1.0f

    .line 691
    .local v13, "pixelWidthHeightRatio":F
    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v21

    .line 694
    .local v21, "childPosition":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 695
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v27

    .line 697
    .local v27, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v27, :cond_0

    .line 698
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 699
    if-nez p6, :cond_3

    const/16 p6, 0x0

    .line 701
    :goto_0
    move-object/from16 v0, p7

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v3, v5, p8

    .line 703
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 710
    .end local v27    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    const/4 v11, 0x0

    .line 711
    .local v11, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 712
    .local v4, "mimeType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 714
    .local v14, "projectionData":[B
    const/4 v15, -0x1

    .line 715
    .local v15, "stereoMode":I
    :goto_1
    sub-int v3, v21, p2

    move/from16 v0, p3

    if-ge v3, v0, :cond_2

    .line 716
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v22

    .line 718
    .local v22, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v19

    .line 719
    .local v19, "childAtomSize":I
    if-nez v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v3, p2

    move/from16 v0, p3

    if-ne v3, v0, :cond_4

    .line 786
    .end local v19    # "childAtomSize":I
    .end local v22    # "childStartPosition":I
    :cond_2
    if-nez v4, :cond_14

    .line 793
    :goto_2
    return-void

    .line 699
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v11    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "projectionData":[B
    .end local v15    # "stereoMode":I
    .restart local v27    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3
    move-object/from16 v0, v27

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 700
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p6

    goto :goto_0

    .line 723
    .end local v27    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;>;"
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v11    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v14    # "projectionData":[B
    .restart local v15    # "stereoMode":I
    .restart local v19    # "childAtomSize":I
    .restart local v22    # "childStartPosition":I
    :cond_4
    if-lez v19, :cond_6

    const/4 v3, 0x1

    :goto_3
    const-string v5, "childAtomSize should be positive"

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 725
    .local v20, "childAtomType":I
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    .line 726
    if-nez v4, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 727
    const-string v4, "video/avc"

    .line 728
    add-int/lit8 v3, v22, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 729
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v18

    .line 730
    .local v18, "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 731
    move-object/from16 v0, v18

    iget v3, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 732
    if-nez v26, :cond_5

    .line 733
    move-object/from16 v0, v18

    iget v13, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 782
    .end local v18    # "avcConfig":Lcom/google/android/exoplayer2/video/AvcConfig;
    :cond_5
    :goto_5
    add-int v21, v21, v19

    .line 783
    goto :goto_1

    .line 723
    .end local v20    # "childAtomType":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 726
    .restart local v20    # "childAtomType":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 735
    :cond_8
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_a

    .line 736
    if-nez v4, :cond_9

    const/4 v3, 0x1

    :goto_6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 737
    const-string v4, "video/hevc"

    .line 738
    add-int/lit8 v3, v22, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 739
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v23

    .line 740
    .local v23, "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 741
    move-object/from16 v0, v23

    iget v3, v0, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_5

    .line 736
    .end local v23    # "hevcConfig":Lcom/google/android/exoplayer2/video/HevcConfig;
    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    .line 742
    :cond_a
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_d

    .line 743
    if-nez v4, :cond_b

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 744
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    const-string v4, "video/x-vnd.on2.vp8"

    :goto_8
    goto :goto_5

    .line 743
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .line 744
    :cond_c
    const-string v4, "video/x-vnd.on2.vp9"

    goto :goto_8

    .line 745
    :cond_d
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_f

    .line 746
    if-nez v4, :cond_e

    const/4 v3, 0x1

    :goto_9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 747
    const-string v4, "video/3gpp"

    goto :goto_5

    .line 746
    :cond_e
    const/4 v3, 0x0

    goto :goto_9

    .line 748
    :cond_f
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_11

    .line 749
    if-nez v4, :cond_10

    const/4 v3, 0x1

    :goto_a
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 751
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v25

    .line 752
    .local v25, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v4    # "mimeType":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 753
    .restart local v4    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 754
    goto :goto_5

    .line 749
    .end local v25    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_10
    const/4 v3, 0x0

    goto :goto_a

    .line 754
    :cond_11
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_12

    .line 755
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v13

    .line 756
    const/16 v26, 0x1

    goto/16 :goto_5

    .line 757
    :cond_12
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_13

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v14

    goto/16 :goto_5

    .line 759
    :cond_13
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v28

    .line 761
    .local v28, "version":I
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 762
    if-nez v28, :cond_5

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    .line 764
    .local v24, "layout":I
    packed-switch v24, :pswitch_data_0

    goto/16 :goto_5

    .line 766
    :pswitch_0
    const/4 v15, 0x0

    .line 767
    goto/16 :goto_5

    .line 769
    :pswitch_1
    const/4 v15, 0x1

    .line 770
    goto/16 :goto_5

    .line 772
    :pswitch_2
    const/4 v15, 0x2

    .line 773
    goto/16 :goto_5

    .line 775
    :pswitch_3
    const/4 v15, 0x3

    .line 776
    goto/16 :goto_5

    .line 790
    .end local v19    # "childAtomSize":I
    .end local v20    # "childAtomType":I
    .end local v22    # "childStartPosition":I
    .end local v24    # "layout":I
    .end local v28    # "version":I
    :cond_14
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v16, 0x0

    move/from16 v12, p5

    move-object/from16 v17, p6

    invoke-static/range {v3 .. v17}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p7

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
