.class public Lcom/unisound/vui/util/upload/ReqDataDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_LEN_FIELD_LEN:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/util/upload/ReqDataDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/util/upload/ReqDataDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Lcom/unisound/vui/util/upload/DecodeResult;
    .locals 9
    .param p0, "input"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    :cond_0
    sget-object v1, Lcom/unisound/vui/util/upload/ReqDataDecoder;->TAG:Ljava/lang/String;

    const-string v2, "bad input"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-array v2, v3, [B

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aget-byte v3, p0, v3

    add-int/lit8 v4, v2, -0x4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    array-length v5, p0

    sget-object v6, Lcom/unisound/vui/util/upload/ReqDataDecoder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IN DECODE]totalLen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", userIDLen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", leftLen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", inputLen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v2, v5, :cond_1

    new-array v5, v3, [B

    const/4 v0, 0x5

    add-int v6, v0, v3

    invoke-static {p0, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, v5, v1

    new-array v7, v4, [B

    move v0, v1

    :goto_1
    if-eq v0, v4, :cond_3

    rem-int v2, v0, v3

    aget-byte v8, v5, v2

    add-int v2, v6, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/unisound/vui/util/upload/DecodeResult;

    invoke-direct {v0}, Lcom/unisound/vui/util/upload/DecodeResult;-><init>()V

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/unisound/vui/util/upload/DecodeResult;->setUserID(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/unisound/vui/util/upload/DecodeResult;->setOther([B)V

    goto/16 :goto_0
.end method
