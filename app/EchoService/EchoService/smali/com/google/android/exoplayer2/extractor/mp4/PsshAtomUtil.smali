.class public final Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PsshAtomUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .locals 1
    .param p0, "systemId"    # Ljava/util/UUID;
    .param p1, "data"    # [B

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 10
    .param p0, "systemId"    # Ljava/util/UUID;
    .param p1, "keyIds"    # [Ljava/util/UUID;
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 52
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 53
    .local v0, "buildV1Atom":Z
    :goto_0
    if-eqz p2, :cond_2

    array-length v1, p2

    .line 54
    .local v1, "dataLength":I
    :goto_1
    add-int/lit8 v4, v1, 0x20

    .line 55
    .local v4, "psshBoxLength":I
    if-eqz v0, :cond_0

    .line 56
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    .line 58
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 59
    .local v3, "psshBox":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 60
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 61
    if-eqz v0, :cond_3

    const/high16 v5, 0x1000000

    :goto_2
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 64
    if-eqz v0, :cond_4

    .line 65
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    array-length v5, p1

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v2, p1, v6

    .line 67
    .local v2, "keyId":Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v0    # "buildV1Atom":Z
    .end local v1    # "dataLength":I
    .end local v2    # "keyId":Ljava/util/UUID;
    .end local v3    # "psshBox":Ljava/nio/ByteBuffer;
    .end local v4    # "psshBoxLength":I
    :cond_1
    move v0, v6

    .line 52
    goto :goto_0

    .restart local v0    # "buildV1Atom":Z
    :cond_2
    move v1, v6

    .line 53
    goto :goto_1

    .restart local v1    # "dataLength":I
    .restart local v3    # "psshBox":Ljava/nio/ByteBuffer;
    .restart local v4    # "psshBoxLength":I
    :cond_3
    move v5, v6

    .line 61
    goto :goto_2

    .line 71
    :cond_4
    if-eqz v1, :cond_5

    .line 72
    array-length v5, p2

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    :cond_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    return-object v5
.end method

.method private static parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    .locals 12
    .param p0, "atom"    # [B

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 145
    .local v0, "atomData":Lcom/google/android/exoplayer2/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    .line 147
    const/4 v8, 0x0

    .line 177
    :goto_0
    return-object v8

    .line 149
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 150
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 151
    .local v1, "atomSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v1, v8, :cond_1

    .line 153
    const/4 v8, 0x0

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 156
    .local v2, "atomType":I
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq v2, v8, :cond_2

    .line 158
    const/4 v8, 0x0

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 161
    .local v3, "atomVersion":I
    const/4 v8, 0x1

    if-le v3, v8, :cond_3

    .line 162
    const-string v8, "PsshAtomUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported pssh version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v8, 0x0

    goto :goto_0

    .line 165
    :cond_3
    new-instance v7, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 166
    .local v7, "uuid":Ljava/util/UUID;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 168
    .local v6, "keyIdCount":I
    mul-int/lit8 v8, v6, 0x10

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 170
    .end local v6    # "keyIdCount":I
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 171
    .local v5, "dataSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-eq v5, v8, :cond_5

    .line 173
    const/4 v8, 0x0

    goto :goto_0

    .line 175
    :cond_5
    new-array v4, v5, [B

    .line 176
    .local v4, "data":[B
    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 177
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {v8, v7, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    goto :goto_0
.end method

.method public static parseSchemeSpecificData([BLjava/util/UUID;)[B
    .locals 5
    .param p0, "atom"    # [B
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 125
    .local v0, "parsedAtom":Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-object v1

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string v2, "PsshAtomUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID mismatch. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .locals 2
    .param p0, "atom"    # [B

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 89
    .local v0, "parsedAtom":Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseVersion([B)I
    .locals 2
    .param p0, "atom"    # [B

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 106
    .local v0, "parsedAtom":Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-nez v0, :cond_0

    .line 107
    const/4 v1, -0x1

    .line 109
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)I

    move-result v1

    goto :goto_0
.end method
