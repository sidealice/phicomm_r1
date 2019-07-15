.class public Lcom/ta/utdid2/b/a/b;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/b/a/b$a;,
        Lcom/ta/utdid2/b/a/b$b;,
        Lcom/ta/utdid2/b/a/b$c;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ta/utdid2/b/a/b;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BI)[B
    .locals 2

    const/4 v0, 0x0

    .line 142
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/b/a/b;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .locals 2

    .line 169
    new-instance v0, Lcom/ta/utdid2/b/a/b$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/b/a/b$b;-><init>(I[B)V

    const/4 p3, 0x1

    .line 171
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ta/utdid2/b/a/b$b;->a([BIIZ)Z

    move-result p0

    if-nez p0, :cond_0

    .line 172
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_0
    iget p0, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    iget-object p1, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1

    .line 177
    iget-object p0, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    return-object p0

    .line 182
    :cond_1
    iget p0, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    new-array p0, p0, [B

    .line 183
    iget-object p1, v0, Lcom/ta/utdid2/b/a/b$b;->b:[B

    iget p2, v0, Lcom/ta/utdid2/b/a/b$b;->a:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static encode([BI)[B
    .locals 2

    const/4 v0, 0x0

    .line 507
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/b/a/b;->encode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIII)[B
    .locals 4

    .line 525
    new-instance v0, Lcom/ta/utdid2/b/a/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ta/utdid2/b/a/b$c;-><init>(I[B)V

    .line 528
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 531
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_0

    .line 532
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_1

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 536
    :cond_0
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    :pswitch_1
    add-int/lit8 p3, p3, 0x2

    .line 549
    :cond_1
    :goto_0
    :pswitch_2
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-lez p2, :cond_3

    add-int/lit8 v1, p2, -0x1

    .line 550
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v2

    .line 551
    iget-boolean v3, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    mul-int/2addr v1, v3

    add-int/2addr p3, v1

    .line 554
    :cond_3
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 555
    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/ta/utdid2/b/a/b$c;->a([BIIZ)Z

    .line 557
    sget-boolean p0, Lcom/ta/utdid2/b/a/b;->a:Z

    if-nez p0, :cond_4

    iget p0, v0, Lcom/ta/utdid2/b/a/b$c;->a:I

    if-eq p0, p3, :cond_4

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 559
    :cond_4
    iget-object p0, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 1

    .line 465
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/b/a/b;->encode([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 468
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
