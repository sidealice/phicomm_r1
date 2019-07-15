.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    :goto_0
    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 77
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 83
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 89
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 98
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 103
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 105
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 1215
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    return-void

    .line 70
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    .line 1215
    nop

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 172
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 3
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 501
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 502
    xor-int/lit8 v0, v0, -0x1

    .line 510
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_1
    return v0

    .line 504
    .restart local v0    # "index":I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 505
    .local v1, "listSize":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    :cond_4
    if-eqz p2, :cond_0

    .line 507
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .prologue
    .line 433
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 434
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 435
    xor-int/lit8 v0, v0, -0x1

    .line 442
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_1
    return v0

    .line 437
    .restart local v0    # "index":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 438
    :cond_3
    if-eqz p3, :cond_0

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 2
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 467
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 468
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 475
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_1
    return v0

    .line 470
    .restart local v0    # "index":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    :cond_3
    if-eqz p2, :cond_0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z

    .prologue
    .line 368
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 369
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 370
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 377
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_1
    return v0

    .line 372
    .restart local v0    # "index":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    aget v1, p0, v0

    if-eq v1, p1, :cond_2

    .line 373
    :cond_3
    if-eqz p2, :cond_0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "value"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .prologue
    .line 400
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 401
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 402
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 409
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_1
    return v0

    .line 404
    .restart local v0    # "index":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 405
    :cond_3
    if-eqz p3, :cond_0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ceilDivide(II)I
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    .line 298
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .prologue
    .line 309
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 1
    .param p0, "dataSource"    # Lcom/google/android/exoplayer2/upstream/DataSource;

    .prologue
    .line 216
    if-eqz p0, :cond_0

    .line 217
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    .line 233
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static constrainValue(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 345
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static constrainValue(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 321
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static constrainValue(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .prologue
    .line 333
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 186
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 187
    .local v0, "arrayItem":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const/4 v1, 0x1

    .line 191
    .end local v0    # "arrayItem":Ljava/lang/Object;
    :cond_0
    return v1

    .line 186
    .restart local v0    # "arrayItem":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static crc([BIII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .prologue
    .line 1114
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1115
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 1114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    return p3
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1093
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1094
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1095
    return-object v0
.end method

.method public static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 981
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 982
    .local v5, "length":I
    const/4 v2, 0x0

    .line 983
    .local v2, "charactersToEscapeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 984
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 985
    add-int/lit8 v2, v2, 0x1

    .line 983
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 988
    :cond_1
    if-nez v2, :cond_2

    .line 1006
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 992
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    move v4, v3

    .line 994
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_2
    if-lez v2, :cond_4

    .line 995
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 996
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 997
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v2, v2, -0x1

    :goto_3
    move v4, v3

    .line 1002
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 1000
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1003
    .end local v1    # "c":C
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_4
    if-ge v4, v5, :cond_5

    .line 1004
    invoke-virtual {v0, p0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1006
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "fileName":Ljava/lang/String;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 257
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 842
    packed-switch p0, :pswitch_data_0

    .line 854
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 848
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 850
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 817
    packed-switch p0, :pswitch_data_0

    .line 833
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 819
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 821
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 823
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 825
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 827
    :pswitch_5
    const/16 v0, 0xd

    goto :goto_0

    .line 829
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    .line 717
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 718
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 719
    mul-int/lit8 v2, v1, 0x2

    .line 720
    .local v2, "stringOffset":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    .line 721
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v2    # "stringOffset":I
    :cond_0
    return-object v0
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 735
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 737
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultBufferSize(I)I
    .locals 1
    .param p0, "trackType"    # I

    .prologue
    const/high16 v0, 0x20000

    .line 952
    packed-switch p0, :pswitch_data_0

    .line 964
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 954
    :pswitch_0
    const/high16 v0, 0x1000000

    .line 962
    :goto_0
    :pswitch_1
    return v0

    .line 956
    :pswitch_2
    const/high16 v0, 0x360000

    goto :goto_0

    .line 958
    :pswitch_3
    const/high16 v0, 0xc80000

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1203
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1198
    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 1191
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1192
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1193
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 1207
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1208
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1209
    return-void
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 701
    .local v1, "length":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 702
    const/4 v2, 0x0

    .line 703
    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 704
    shl-int/lit8 v2, v2, 0x8

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    .end local v0    # "i":I
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 707
    .restart local v0    # "i":I
    .restart local v2    # "result":I
    :cond_1
    return v2
.end method

.method public static getPcmEncoding(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .prologue
    .line 774
    sparse-switch p0, :sswitch_data_0

    .line 784
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 776
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 778
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 780
    :sswitch_2
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 782
    :sswitch_3
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 1
    .param p0, "pcmEncoding"    # I
    .param p1, "channelCount"    # I

    .prologue
    .line 796
    sparse-switch p0, :sswitch_data_0

    .line 808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 800
    :sswitch_0
    mul-int/lit8 p1, p1, 0x2

    .line 804
    .end local p1    # "channelCount":I
    :goto_0
    :sswitch_1
    return p1

    .line 802
    .restart local p1    # "channelCount":I
    :sswitch_2
    mul-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 804
    :sswitch_3
    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 796
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1128
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1129
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 1140
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x19

    if-ge v9, v10, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-nez v9, :cond_2

    .line 1143
    const-string v9, "Sony"

    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v10, "BRAVIA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1145
    new-instance v1, Landroid/graphics/Point;

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 1185
    :goto_0
    return-object v1

    .line 1146
    :cond_0
    const-string v9, "NVIDIA"

    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v10, "SHIELD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1148
    const/4 v5, 0x0

    .line 1150
    .local v5, "sysDisplaySize":Ljava/lang/String;
    :try_start_0
    const-string v9, "android.os.SystemProperties"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1151
    .local v7, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1152
    .local v3, "getMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "sys.display-size"

    aput-object v11, v9, v10

    invoke-virtual {v3, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1157
    .end local v3    # "getMethod":Ljava/lang/reflect/Method;
    .end local v7    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1159
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1160
    .local v6, "sysDisplaySizeParts":[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1161
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1162
    .local v8, "width":I
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1163
    .local v4, "height":I
    if-lez v8, :cond_1

    if-lez v4, :cond_1

    .line 1164
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1167
    .end local v4    # "height":I
    .end local v6    # "sysDisplaySizeParts":[Ljava/lang/String;
    .end local v8    # "width":I
    :catch_0
    move-exception v9

    .line 1170
    :cond_1
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid sys.display-size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    .end local v5    # "sysDisplaySize":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1176
    .local v1, "displaySize":Landroid/graphics/Point;
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_3

    .line 1177
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1153
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .restart local v5    # "sysDisplaySize":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1154
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Util"

    const-string v10, "Failed to read sys.display-size"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1178
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "sysDisplaySize":Ljava/lang/String;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    :cond_3
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_4

    .line 1179
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1180
    :cond_4
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_5

    .line 1181
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1183
    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .locals 1
    .param p0, "usage"    # I

    .prologue
    const/4 v0, 0x3

    .line 863
    packed-switch p0, :pswitch_data_0

    .line 887
    :goto_0
    :pswitch_0
    return v0

    .line 869
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 871
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 873
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 875
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 877
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 883
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 863
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 12
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "timeMs"    # J

    .prologue
    .line 932
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, p2, v8

    if-nez v8, :cond_0

    .line 933
    const-wide/16 p2, 0x0

    .line 935
    :cond_0
    const-wide/16 v8, 0x1f4

    add-long/2addr v8, p2

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 936
    .local v6, "totalSeconds":J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 937
    .local v4, "seconds":J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 938
    .local v2, "minutes":J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 939
    .local v0, "hours":J
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 940
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_1

    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 941
    :goto_0
    return-object v8

    .line 940
    :cond_1
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 941
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 753
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 755
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .local v3, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Linux;Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ExoPlayerLib/2.6.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 756
    .end local v3    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "?"

    .restart local v3    # "versionName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 899
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 911
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 912
    const-string v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 919
    :goto_0
    return v0

    .line 914
    :cond_0
    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    const/4 v0, 0x2

    goto :goto_0

    .line 916
    :cond_1
    const-string v0, ".*\\.ism(l)?(/manifest(\\(.+\\))?)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    const/4 v0, 0x1

    goto :goto_0

    .line 919
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isLinebreak(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 277
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    array-length v4, p1

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 141
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    move v1, v2

    .line 145
    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 247
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 14
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    const/16 v13, 0x8

    const/4 v12, 0x3

    .line 553
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 554
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date/time format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_0
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 561
    const/4 v9, 0x0

    .line 572
    .local v9, "timezoneShift":I
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 574
    .local v0, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 577
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 578
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    .line 579
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 580
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    .line 581
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 576
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 582
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    new-instance v7, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 585
    .local v7, "bd":Ljava/math/BigDecimal;
    const/16 v1, 0xe

    invoke-virtual {v7, v12}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 588
    .end local v7    # "bd":Ljava/math/BigDecimal;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 589
    .local v10, "time":J
    if-eqz v9, :cond_3

    .line 590
    const v1, 0xea60

    mul-int/2addr v1, v9

    int-to-long v2, v1

    sub-long/2addr v10, v2

    .line 593
    :cond_3
    return-wide v10

    .line 562
    .end local v0    # "dateTime":Ljava/util/Calendar;
    .end local v9    # "timezoneShift":I
    .end local v10    # "time":J
    :cond_4
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 563
    const/4 v9, 0x0

    .restart local v9    # "timezoneShift":I
    goto/16 :goto_0

    .line 565
    .end local v9    # "timezoneShift":I
    :cond_5
    const/16 v1, 0xc

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xd

    .line 566
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int v9, v1, v2

    .line 567
    .restart local v9    # "timezoneShift":I
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    mul-int/lit8 v9, v9, -0x1

    goto/16 :goto_0
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 18
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    sget-object v14, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 521
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 522
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v11, 0x1

    .line 525
    .local v11, "negated":Z
    :goto_0
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 526
    .local v13, "years":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x417e1852c0000000L    # 3.1556908E7

    mul-double v6, v14, v16

    .line 527
    .local v6, "durationSeconds":D
    :goto_1
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, "months":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x4144103580000000L    # 2629739.0

    mul-double v14, v14, v16

    :goto_2
    add-double/2addr v6, v14

    .line 529
    const/4 v14, 0x7

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "days":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L    # 86400.0

    mul-double v14, v14, v16

    :goto_3
    add-double/2addr v6, v14

    .line 531
    const/16 v14, 0xa

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "hours":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v14, v14, v16

    :goto_4
    add-double/2addr v6, v14

    .line 533
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 534
    .local v9, "minutes":Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    :goto_5
    add-double/2addr v6, v14

    .line 535
    const/16 v14, 0xe

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 536
    .local v12, "seconds":Ljava/lang/String;
    if-eqz v12, :cond_7

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    :goto_6
    add-double/2addr v6, v14

    .line 537
    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v14, v6

    double-to-long v4, v14

    .line 538
    .local v4, "durationMillis":J
    if-eqz v11, :cond_0

    neg-long v4, v4

    .line 540
    .end local v2    # "days":Ljava/lang/String;
    .end local v3    # "hours":Ljava/lang/String;
    .end local v4    # "durationMillis":J
    .end local v6    # "durationSeconds":D
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "months":Ljava/lang/String;
    .end local v11    # "negated":Z
    .end local v12    # "seconds":Ljava/lang/String;
    .end local v13    # "years":Ljava/lang/String;
    :cond_0
    :goto_7
    return-wide v4

    .line 522
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 526
    .restart local v11    # "negated":Z
    .restart local v13    # "years":Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 528
    .restart local v6    # "durationSeconds":D
    .restart local v10    # "months":Ljava/lang/String;
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 530
    .restart local v2    # "days":Ljava/lang/String;
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 532
    .restart local v3    # "hours":Ljava/lang/String;
    :cond_5
    const-wide/16 v14, 0x0

    goto :goto_4

    .line 534
    .restart local v9    # "minutes":Ljava/lang/String;
    :cond_6
    const-wide/16 v14, 0x0

    goto :goto_5

    .line 536
    .restart local v12    # "seconds":Ljava/lang/String;
    :cond_7
    const-wide/16 v14, 0x0

    goto :goto_6

    .line 540
    .end local v2    # "days":Ljava/lang/String;
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "durationSeconds":D
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "months":Ljava/lang/String;
    .end local v11    # "negated":Z
    .end local v12    # "seconds":Ljava/lang/String;
    .end local v13    # "years":Ljava/lang/String;
    :cond_8
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L    # 3600.0

    mul-double v14, v14, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-long v4, v14

    goto :goto_7
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 1082
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1084
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    .end local v0    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1088
    return-void
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 8
    .param p0, "timestamp"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 608
    cmp-long v4, p4, p2

    if-ltz v4, :cond_0

    rem-long v4, p4, p2

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 609
    div-long v0, p4, p2

    .line 610
    .local v0, "divisionFactor":J
    div-long v4, p0, v0

    .line 616
    .end local v0    # "divisionFactor":J
    :goto_0
    return-wide v4

    .line 611
    :cond_0
    cmp-long v4, p4, p2

    if-gez v4, :cond_1

    rem-long v4, p2, p4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 612
    div-long v2, p2, p4

    .line 613
    .local v2, "multiplicationFactor":J
    mul-long v4, p0, v2

    goto :goto_0

    .line 615
    .end local v2    # "multiplicationFactor":J
    :cond_1
    long-to-double v4, p2

    long-to-double v6, p4

    div-double v2, v4, v6

    .line 616
    .local v2, "multiplicationFactor":D
    long-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    goto :goto_0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 11
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .prologue
    .local p0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 629
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [J

    .line 630
    .local v3, "scaledTimestamps":[J
    cmp-long v6, p3, p1

    if-ltz v6, :cond_0

    rem-long v6, p3, p1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 631
    div-long v0, p3, p1

    .line 632
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 633
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v0

    aput-wide v6, v3, v2

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_0
    cmp-long v6, p3, p1

    if-gez v6, :cond_1

    rem-long v6, p1, p3

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 636
    div-long v4, p1, p3

    .line 637
    .local v4, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 638
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v4

    aput-wide v6, v3, v2

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 641
    .end local v2    # "i":I
    .end local v4    # "multiplicationFactor":J
    :cond_1
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 642
    .local v4, "multiplicationFactor":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 643
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, v3, v2

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 646
    .end local v4    # "multiplicationFactor":D
    :cond_2
    return-object v3
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 11
    .param p0, "timestamps"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 657
    cmp-long v3, p3, p1

    if-ltz v3, :cond_0

    rem-long v6, p3, p1

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 658
    div-long v0, p3, p1

    .line 659
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 660
    aget-wide v6, p0, v2

    div-long/2addr v6, v0

    aput-wide v6, p0, v2

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_0
    cmp-long v3, p3, p1

    if-gez v3, :cond_1

    rem-long v6, p1, p3

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 663
    div-long v4, p1, p3

    .line 664
    .local v4, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 665
    aget-wide v6, p0, v2

    mul-long/2addr v6, v4

    aput-wide v6, p0, v2

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    .end local v2    # "i":I
    .end local v4    # "multiplicationFactor":J
    :cond_1
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 669
    .local v4, "multiplicationFactor":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 670
    aget-wide v6, p0, v2

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, p0, v2

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 673
    .end local v4    # "multiplicationFactor":D
    :cond_2
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1010
    sparse-switch p0, :sswitch_data_0

    .line 1023
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1021
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1010
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 1072
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 1073
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1077
    throw p0
.end method

.method public static toArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 683
    const/4 v1, 0x0

    .line 690
    :cond_0
    return-object v1

    .line 685
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 686
    .local v2, "length":I
    new-array v1, v2, [I

    .line 687
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 688
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 119
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1038
    .local v3, "length":I
    const/4 v5, 0x0

    .line 1039
    .local v5, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1040
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_0

    .line 1041
    add-int/lit8 v5, v5, 0x1

    .line 1039
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    if-nez v5, :cond_2

    .line 1064
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1048
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_2
    mul-int/lit8 v8, v5, 0x2

    sub-int v1, v3, v8

    .line 1049
    .local v1, "expectedLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1050
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1051
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .line 1052
    .local v6, "startOfNotEscaped":I
    :goto_2
    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1053
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v7, v8

    .line 1054
    .local v7, "unescapedCharacter":C
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v0, p0, v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 1056
    add-int/lit8 v5, v5, -0x1

    .line 1057
    goto :goto_2

    .line 1058
    .end local v7    # "unescapedCharacter":C
    :cond_3
    if-ge v6, v3, :cond_4

    .line 1059
    invoke-virtual {v0, p0, v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1061
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eq v8, v1, :cond_5

    .line 1062
    const/4 p0, 0x0

    goto :goto_1

    .line 1064
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method
