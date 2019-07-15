.class public final Lcom/umeng/commonsdk/proguard/aq;
.super Lcom/umeng/commonsdk/proguard/ae;
.source "TTupleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/aq$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/proguard/ay;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    return-void
.end method

.method public static a([B)Ljava/util/BitSet;
    .locals 5

    .line 71
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    .line 72
    :goto_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    .line 73
    array-length v3, p0

    div-int/lit8 v4, v1, 0x8

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v1, 0x8

    shl-int/2addr v2, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/util/BitSet;I)[B
    .locals 5

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 93
    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 95
    array-length v2, p1

    div-int/lit8 v3, v0, 0x8

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget-byte v3, p1, v2

    rem-int/lit8 v4, v0, 0x8

    shl-int/2addr v1, v4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public D()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/as;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/umeng/commonsdk/proguard/av;

    return-object v0
.end method

.method public a(Ljava/util/BitSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 50
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/proguard/aq;->b(Ljava/util/BitSet;I)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 51
    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_0

    aget-byte v1, p1, p2

    .line 52
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/aq;->a(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 58
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/aq;->u()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/aq;->a([B)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
