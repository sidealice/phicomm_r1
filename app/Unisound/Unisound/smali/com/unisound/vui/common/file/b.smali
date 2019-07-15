.class public Lcom/unisound/vui/common/file/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:[C

.field public b:I

.field public c:[C

.field public d:[C

.field public e:I

.field public f:S

.field public g:S

.field public h:I

.field public i:I

.field public j:S

.field public k:S

.field public l:[C

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/unisound/vui/common/file/b;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/unisound/vui/common/file/b;->c:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/unisound/vui/common/file/b;->d:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/unisound/vui/common/file/b;->l:[C

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

.method private a(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method private a(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-char v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0x8

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shl-int/lit8 v2, p2, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    shl-int/lit8 v2, p2, 0x18

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/unisound/vui/common/file/b;->a:[C

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/unisound/vui/common/file/b;->b:I

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/unisound/vui/common/file/b;->c:[C

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget-object v1, p0, Lcom/unisound/vui/common/file/b;->d:[C

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/unisound/vui/common/file/b;->e:I

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/unisound/vui/common/file/b;->f:S

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/unisound/vui/common/file/b;->g:S

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/unisound/vui/common/file/b;->h:I

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget v1, p0, Lcom/unisound/vui/common/file/b;->i:I

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->b(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/unisound/vui/common/file/b;->j:S

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-short v1, p0, Lcom/unisound/vui/common/file/b;->k:S

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v1, p0, Lcom/unisound/vui/common/file/b;->l:[C

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->a(Ljava/io/ByteArrayOutputStream;[C)V

    iget v1, p0, Lcom/unisound/vui/common/file/b;->m:I

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/common/file/b;->b(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1
.end method
