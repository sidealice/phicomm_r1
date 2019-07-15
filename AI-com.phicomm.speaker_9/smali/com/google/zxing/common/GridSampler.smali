.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 125
    array-length v7, p1

    if-ge v3, v7, :cond_6

    if-eqz v4, :cond_6

    .line 126
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v7, v3, 0x1

    .line 127
    aget v8, p1, v7

    float-to-int v8, v8

    if-lt v4, v6, :cond_5

    if-gt v4, v0, :cond_5

    if-lt v8, v6, :cond_5

    if-le v8, p0, :cond_0

    goto :goto_5

    :cond_0
    if-ne v4, v6, :cond_1

    .line 133
    aput v5, p1, v3

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_1
    if-ne v4, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 136
    aput v4, p1, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-ne v8, v6, :cond_3

    .line 140
    aput v5, p1, v7

    :goto_3
    move v4, v2

    goto :goto_4

    :cond_3
    if-ne v8, p0, :cond_4

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 143
    aput v4, p1, v7

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 129
    :cond_5
    :goto_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 149
    :cond_6
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    move v4, v2

    :goto_6
    if-ltz v3, :cond_d

    if-eqz v4, :cond_d

    .line 150
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v7, v3, 0x1

    .line 151
    aget v8, p1, v7

    float-to-int v8, v8

    if-lt v4, v6, :cond_c

    if-gt v4, v0, :cond_c

    if-lt v8, v6, :cond_c

    if-le v8, p0, :cond_7

    goto :goto_b

    :cond_7
    if-ne v4, v6, :cond_8

    .line 157
    aput v5, p1, v3

    :goto_7
    move v4, v2

    goto :goto_8

    :cond_8
    if-ne v4, v0, :cond_9

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 160
    aput v4, p1, v3

    goto :goto_7

    :cond_9
    move v4, v1

    :goto_8
    if-ne v8, v6, :cond_a

    .line 164
    aput v5, p1, v7

    :goto_9
    move v4, v2

    goto :goto_a

    :cond_a
    if-ne v8, p0, :cond_b

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 167
    aput v4, p1, v7

    goto :goto_9

    :cond_b
    :goto_a
    add-int/lit8 v3, v3, -0x2

    goto :goto_6

    .line 153
    :cond_c
    :goto_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0

    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
