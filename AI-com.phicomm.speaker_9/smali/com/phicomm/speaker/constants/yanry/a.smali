.class public interface abstract Lcom/phicomm/speaker/constants/yanry/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:Ljava/util/UUID;

.field public static final b:Ljava/util/UUID;

.field public static final c:Ljava/util/UUID;

.field public static final d:Ljava/util/UUID;

.field public static final e:Ljava/util/UUID;

.field public static final f:Ljava/util/UUID;

.field public static final g:Ljava/util/UUID;

.field public static final h:[B

.field public static final i:[B

.field public static final j:Ljava/lang/String;

.field public static final k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "8235a8e8-c6cb-48ea-bae2-3d2431384478"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->a:Ljava/util/UUID;

    const-string v0, "c0df6540-40d1-4bbe-8a8a-1dde7b26d639"

    .line 13
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->b:Ljava/util/UUID;

    const-string v0, "ea8229fd-92ed-49aa-8c9c-1aca5c989d73"

    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->c:Ljava/util/UUID;

    const-string v0, "c5816f6f-4b00-47ad-8fd6-8915ffe262b3"

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->d:Ljava/util/UUID;

    const-string v0, "163456BD-0F5A-80F2-EC0A-B6E04A9E7B4D"

    .line 17
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->e:Ljava/util/UUID;

    const-string v0, "21a0e1dd-9ee1-4c89-ad72-bc5324e161b9"

    .line 18
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->f:Ljava/util/UUID;

    const-string v0, "9477bb5f-cf34-4b00-9781-dfd24a473ef8"

    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->g:Ljava/util/UUID;

    const/16 v0, 0x10

    .line 23
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/phicomm/speaker/constants/yanry/a;->h:[B

    .line 24
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->i:[B

    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AES"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CBC"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PKCS7Padding"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->j:Ljava/lang/String;

    .line 45
    new-array v0, v4, [B

    const/16 v1, 0x53

    aput-byte v1, v0, v3

    sput-object v0, Lcom/phicomm/speaker/constants/yanry/a;->k:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x66t
        0x66t
        0x65t
        0x35t
        0x34t
        0x38t
        0x34t
        0x64t
        0x62t
        0x30t
        0x64t
        0x34t
        0x34t
        0x39t
        0x38t
        0x62t
    .end array-data

    :array_1
    .array-data 1
        0x65t
        0x63t
        0x64t
        0x61t
        0x31t
        0x30t
        0x62t
        0x31t
        0x37t
        0x63t
        0x37t
        0x32t
        0x34t
        0x63t
        0x32t
        0x36t
    .end array-data
.end method
