.class Lcom/ta/utdid2/b/a/b$c;
.super Lcom/ta/utdid2/b/a/b$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Z = true

.field private static final c:[B

.field private static final d:[B


# instance fields
.field b:I

.field public final b:Z

.field public final c:Z

.field private count:I

.field public final d:Z

.field private final e:[B

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 562
    const-class v0, Lcom/ta/utdid2/b/a/b;

    const/16 v0, 0x40

    .line 574
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ta/utdid2/b/a/b$c;->c:[B

    .line 585
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ta/utdid2/b/a/b$c;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 601
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/b$a;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 604
    :goto_0
    iput-boolean p2, p0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 605
    :goto_1
    iput-boolean p2, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 606
    :goto_2
    iput-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    .line 607
    sget-object p1, Lcom/ta/utdid2/b/a/b$c;->c:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/ta/utdid2/b/a/b$c;->d:[B

    :goto_3
    iput-object p1, p0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    const/4 p1, 0x2

    .line 609
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    .line 610
    iput v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 612
    iget-boolean p1, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    iput p1, p0, Lcom/ta/utdid2/b/a/b$c;->count:I

    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 18

    move-object/from16 v0, p0

    .line 625
    iget-object v3, v0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    .line 626
    iget-object v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 628
    iget v5, v0, Lcom/ta/utdid2/b/a/b$c;->count:I

    add-int v6, p3, p2

    .line 638
    iget v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v7, p2, 0x1

    if-gt v7, v6, :cond_0

    .line 657
    iget-object v11, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    .line 658
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v11

    .line 659
    iput v9, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    goto :goto_1

    :pswitch_1
    add-int/lit8 v7, p2, 0x2

    if-gt v7, v6, :cond_0

    .line 647
    iget-object v7, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v11, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v11, 0x1

    .line 648
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v2, v11

    .line 649
    iput v9, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    goto :goto_1

    :cond_0
    :goto_0
    :pswitch_2
    move/from16 v7, p2

    move v2, v8

    :goto_1
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/4 v15, 0x2

    if-eq v2, v8, :cond_3

    shr-int/lit8 v8, v2, 0x12

    and-int/lit8 v8, v8, 0x3f

    .line 665
    aget-byte v8, v3, v8

    aput-byte v8, v4, v9

    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0x3f

    .line 666
    aget-byte v8, v3, v8

    aput-byte v8, v4, v10

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 667
    aget-byte v8, v3, v8

    aput-byte v8, v4, v15

    and-int/lit8 v2, v2, 0x3f

    .line 668
    aget-byte v2, v3, v2

    const/4 v8, 0x3

    aput-byte v2, v4, v8

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_2

    .line 670
    iget-boolean v2, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    .line 671
    aput-byte v13, v4, v12

    goto :goto_2

    :cond_1
    move v2, v12

    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 672
    aput-byte v14, v4, v2

    const/16 v2, 0x13

    goto :goto_3

    :cond_2
    move v2, v5

    move v5, v12

    goto :goto_3

    :cond_3
    move v2, v5

    move v5, v9

    :goto_3
    add-int/lit8 v8, v7, 0x3

    if-le v8, v6, :cond_14

    if-eqz p4, :cond_11

    .line 705
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x1

    if-ne v8, v11, :cond_7

    .line 707
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-lez v8, :cond_4

    iget-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v1, v1, v9

    move v9, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v7, 0x1

    aget-byte v1, p1, v7

    move v7, v8

    :goto_4
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v12

    .line 708
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 709
    aget-byte v9, v3, v9

    aput-byte v9, v4, v5

    add-int/lit8 v5, v8, 0x1

    and-int/lit8 v1, v1, 0x3f

    .line 710
    aget-byte v1, v3, v1

    aput-byte v1, v4, v8

    .line 711
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_5

    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0x3d

    .line 712
    aput-byte v3, v4, v5

    add-int/lit8 v5, v1, 0x1

    .line 713
    aput-byte v3, v4, v1

    .line 715
    :cond_5
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_f

    .line 716
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_6

    add-int/lit8 v1, v5, 0x1

    .line 717
    aput-byte v13, v4, v5

    goto :goto_5

    :cond_6
    move v1, v5

    :goto_5
    add-int/lit8 v3, v1, 0x1

    .line 718
    aput-byte v14, v4, v1

    :goto_6
    move v5, v3

    goto/16 :goto_c

    .line 720
    :cond_7
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x2

    if-ne v8, v11, :cond_d

    .line 722
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-le v8, v10, :cond_8

    iget-object v8, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v8, v8, v9

    move v9, v10

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_7

    :cond_8
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    :goto_7
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v14

    .line 723
    iget v11, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-lez v11, :cond_9

    iget-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v1, v1, v9

    move v9, v11

    move v11, v8

    goto :goto_8

    :cond_9
    add-int/lit8 v11, v8, 0x1

    aget-byte v1, p1, v8

    :goto_8
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v15

    or-int/2addr v1, v7

    .line 724
    iget v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int/2addr v7, v9

    iput v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    .line 725
    aget-byte v8, v3, v8

    aput-byte v8, v4, v5

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 726
    aget-byte v8, v3, v8

    aput-byte v8, v4, v7

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v1, v1, 0x3f

    .line 727
    aget-byte v1, v3, v1

    aput-byte v1, v4, v5

    .line 728
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_a

    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x3d

    .line 729
    aput-byte v3, v4, v7

    goto :goto_9

    :cond_a
    move v1, v7

    .line 731
    :goto_9
    iget-boolean v3, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v3, :cond_c

    .line 732
    iget-boolean v3, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v3, :cond_b

    add-int/lit8 v3, v1, 0x1

    .line 733
    aput-byte v13, v4, v1

    move v1, v3

    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 734
    aput-byte v14, v4, v1

    move v5, v3

    goto :goto_a

    :cond_c
    move v5, v1

    :goto_a
    move v7, v11

    goto :goto_c

    .line 736
    :cond_d
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_f

    if-lez v5, :cond_f

    const/16 v11, 0x13

    if-eq v2, v11, :cond_f

    .line 737
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_e

    add-int/lit8 v1, v5, 0x1

    .line 738
    aput-byte v13, v4, v5

    goto :goto_b

    :cond_e
    move v1, v5

    :goto_b
    add-int/lit8 v3, v1, 0x1

    .line 739
    aput-byte v14, v4, v1

    goto/16 :goto_6

    .line 742
    :cond_f
    :goto_c
    sget-boolean v1, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v1, :cond_10

    iget v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 743
    :cond_10
    sget-boolean v1, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v1, :cond_13

    if-eq v7, v6, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_11
    add-int/lit8 v3, v6, -0x1

    if-ne v7, v3, :cond_12

    .line 749
    iget-object v3, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    goto :goto_d

    :cond_12
    sub-int/2addr v6, v15

    if-ne v7, v6, :cond_13

    .line 751
    iget-object v3, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v6, p1, v7

    aput-byte v6, v3, v4

    .line 752
    iget-object v3, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/2addr v7, v10

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    .line 756
    :cond_13
    :goto_d
    iput v5, v0, Lcom/ta/utdid2/b/a/b$c;->a:I

    .line 757
    iput v2, v0, Lcom/ta/utdid2/b/a/b$c;->count:I

    return v10

    :cond_14
    const/16 v11, 0x13

    .line 683
    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v16, v7, 0x1

    aget-byte v10, p1, v16

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x2

    .line 684
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    shr-int/lit8 v9, v7, 0x12

    and-int/lit8 v9, v9, 0x3f

    .line 685
    aget-byte v9, v3, v9

    aput-byte v9, v4, v5

    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    .line 686
    aget-byte v10, v3, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v5, 0x2

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 687
    aget-byte v10, v3, v10

    aput-byte v10, v4, v9

    add-int/lit8 v9, v5, 0x3

    and-int/lit8 v7, v7, 0x3f

    .line 688
    aget-byte v7, v3, v7

    aput-byte v7, v4, v9

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_16

    .line 692
    iget-boolean v2, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v2, :cond_15

    add-int/lit8 v2, v5, 0x1

    .line 693
    aput-byte v13, v4, v5

    goto :goto_e

    :cond_15
    move v2, v5

    :goto_e
    add-int/lit8 v5, v2, 0x1

    .line 694
    aput-byte v14, v4, v2

    move v7, v8

    move v2, v11

    goto :goto_f

    :cond_16
    move v7, v8

    :goto_f
    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
