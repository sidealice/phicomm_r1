.class public Lcom/unisound/common/be;
.super Ljava/lang/Object;


# static fields
.field public static c:S

.field private static d:[C

.field private static e:[C

.field private static f:[C

.field private static g:I

.field private static h:S

.field private static i:[C


# instance fields
.field public a:S

.field public b:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x10

    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unisound/common/be;->d:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unisound/common/be;->e:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/unisound/common/be;->f:[C

    sput v2, Lcom/unisound/common/be;->g:I

    const/4 v0, 0x1

    sput-short v0, Lcom/unisound/common/be;->h:S

    sput-short v2, Lcom/unisound/common/be;->c:S

    new-array v0, v1, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/unisound/common/be;->i:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/unisound/common/be;->a:S

    const/16 v0, 0x3e80

    iput-short v0, p0, Lcom/unisound/common/be;->b:S

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shl-int/lit8 v2, p1, 0x8

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shl-int/lit8 v2, p1, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p1, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;S)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p1, 0x8

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(III)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-short v0, Lcom/unisound/common/be;->c:S

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Lcom/unisound/common/be;->d:[C

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;[C)V

    add-int/lit8 v3, p0, 0x24

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;I)V

    sget-object v3, Lcom/unisound/common/be;->e:[C

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;[C)V

    sget-object v3, Lcom/unisound/common/be;->f:[C

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;[C)V

    sget v3, Lcom/unisound/common/be;->g:I

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;I)V

    sget-short v3, Lcom/unisound/common/be;->h:S

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;S)V

    int-to-short v3, p1

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;S)V

    invoke-static {v2, p2}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;I)V

    mul-int v3, v0, p2

    invoke-static {v2, v3}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {v2, v0}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;S)V

    sget-short v0, Lcom/unisound/common/be;->c:S

    invoke-static {v2, v0}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;S)V

    sget-object v0, Lcom/unisound/common/be;->i:[C

    invoke-static {v2, v0}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;[C)V

    invoke-static {v2, p0}, Lcom/unisound/common/be;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
