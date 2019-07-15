.class public Lcom/xiaomi/push/service/r;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x8


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/r;->e:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/r;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iput v0, p0, Lcom/xiaomi/push/service/r;->c:I

    return-void
.end method

.method public static a(B)I
    .locals 1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x100

    add-int/2addr v0, p0

    return v0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/r;->a([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/a;->a([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I[BZ)V
    .locals 7

    const/4 v0, 0x0

    array-length v1, p2

    move v2, v0

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/push/service/r;->b:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iput v0, p0, Lcom/xiaomi/push/service/r;->c:I

    :goto_1
    iget v2, p0, Lcom/xiaomi/push/service/r;->c:I

    const/4 v4, 0x1

    if-ge v2, p1, :cond_1

    iget v2, p0, Lcom/xiaomi/push/service/r;->d:I

    iget-object v5, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v6, p0, Lcom/xiaomi/push/service/r;->c:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v5

    add-int/2addr v2, v5

    iget v5, p0, Lcom/xiaomi/push/service/r;->c:I

    rem-int/2addr v5, v1

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v5

    add-int/2addr v2, v5

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/push/service/r;->d:I

    iget-object v2, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v5, p0, Lcom/xiaomi/push/service/r;->c:I

    iget v6, p0, Lcom/xiaomi/push/service/r;->d:I

    invoke-static {v2, v5, v6}, Lcom/xiaomi/push/service/r;->a([BII)V

    iget v2, p0, Lcom/xiaomi/push/service/r;->c:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/xiaomi/push/service/r;->c:I

    goto :goto_1

    :cond_1
    if-eq p1, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/push/service/r;->d:I

    iget-object v5, p0, Lcom/xiaomi/push/service/r;->b:[B

    aget-byte v5, v5, p1

    invoke-static {v5}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v5

    add-int/2addr v2, v5

    rem-int v1, p1, v1

    aget-byte p2, p2, v1

    invoke-static {p2}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result p2

    add-int/2addr v2, p2

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/push/service/r;->e:I

    :cond_2
    if-eqz p3, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "S_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-gt v0, p1, :cond_3

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/r;->b:[B

    aget-byte v1, v1, v0

    invoke-static {v1}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "   j_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/push/service/r;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   j_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/push/service/r;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   S_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "[j_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v1, p0, Lcom/xiaomi/push/service/r;->d:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   S_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "[j_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget p3, p0, Lcom/xiaomi/push/service/r;->e:I

    aget-byte p1, p1, p3

    invoke-static {p1}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaomi/push/service/r;->b:[B

    aget-byte p1, p1, v4

    if-eqz p1, :cond_4

    const-string p1, "   S[1]!=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a([B)V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/push/service/r;->a(I[BZ)V

    return-void
.end method

.method private static a([BII)V
    .locals 2

    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    aput-byte v0, p0, p2

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/g/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p0

    const/16 v3, 0x5f

    aput-byte v3, v1, v2

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static a([B[B)[B
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    new-array v1, v1, [B

    new-instance v2, Lcom/xiaomi/push/service/r;

    invoke-direct {v2}, Lcom/xiaomi/push/service/r;-><init>()V

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/r;->a([B)V

    invoke-direct {v2}, Lcom/xiaomi/push/service/r;->b()V

    :goto_0
    array-length p0, p1

    if-ge v0, p0, :cond_0

    aget-byte p0, p1, v0

    invoke-virtual {v2}, Lcom/xiaomi/push/service/r;->a()B

    move-result v3

    xor-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iput v0, p0, Lcom/xiaomi/push/service/r;->c:I

    return-void
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/g/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/r;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()B
    .locals 4

    iget v0, p0, Lcom/xiaomi/push/service/r;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/r;->c:I

    iget v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iget-object v1, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v2, p0, Lcom/xiaomi/push/service/r;->c:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/xiaomi/push/service/r;->d:I

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v1, p0, Lcom/xiaomi/push/service/r;->c:I

    iget v2, p0, Lcom/xiaomi/push/service/r;->d:I

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/service/r;->a([BII)V

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget-object v1, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v2, p0, Lcom/xiaomi/push/service/r;->c:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/push/service/r;->b:[B

    iget v3, p0, Lcom/xiaomi/push/service/r;->d:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/xiaomi/push/service/r;->a(B)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    return v0
.end method
