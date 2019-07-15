.class public Lcom/unisound/vui/util/upload/ReqDataUtils;
.super Ljava/lang/Object;


# static fields
.field private static final USERID:Ljava/lang/String; = "userId"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cipherText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/upload/ReqDataDecoder;->decode([B)Lcom/unisound/vui/util/upload/DecodeResult;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/vui/util/upload/DecodeResult;->getOther()[B

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_0
    new-array v0, v2, [B

    goto :goto_0
.end method

.method public static encoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "originalText"    # Ljava/lang/String;

    .prologue
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "userId"

    invoke-static {v1, v0}, Lcom/unisound/vui/util/ReqDataEncoder;->encode(Ljava/lang/String;[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
