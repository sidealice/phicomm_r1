.class public final Lcom/phicomm/speaker/f/d;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x80

    .line 14
    new-array v1, v0, [B

    sput-object v1, Lcom/phicomm/speaker/f/d;->a:[B

    const/16 v1, 0x40

    .line 15
    new-array v1, v1, [C

    sput-object v1, Lcom/phicomm/speaker/f/d;->b:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 22
    sget-object v2, Lcom/phicomm/speaker/f/d;->a:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v3, 0x1a

    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    .line 25
    sget-object v4, Lcom/phicomm/speaker/f/d;->a:[B

    add-int/lit8 v5, v0, -0x61

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v5, 0x34

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    .line 29
    sget-object v6, Lcom/phicomm/speaker/f/d;->a:[B

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v7, v5

    int-to-byte v5, v7

    aput-byte v5, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 32
    :cond_3
    sget-object v0, Lcom/phicomm/speaker/f/d;->a:[B

    const/16 v7, 0x3e

    const/16 v8, 0x2b

    aput-byte v7, v0, v8

    .line 33
    sget-object v0, Lcom/phicomm/speaker/f/d;->a:[B

    const/16 v9, 0x3f

    const/16 v10, 0x2f

    aput-byte v9, v0, v10

    move v0, v1

    :goto_4
    const/16 v11, 0x19

    if-gt v0, v11, :cond_4

    .line 36
    sget-object v11, Lcom/phicomm/speaker/f/d;->b:[C

    add-int v12, v2, v0

    int-to-char v12, v12

    aput-char v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_5
    const/16 v2, 0x33

    if-gt v3, v2, :cond_5

    .line 40
    sget-object v2, Lcom/phicomm/speaker/f/d;->b:[C

    add-int v11, v4, v0

    int-to-char v11, v11

    aput-char v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v5, v0, :cond_6

    .line 44
    sget-object v0, Lcom/phicomm/speaker/f/d;->b:[C

    add-int v2, v6, v1

    int-to-char v2, v2

    aput-char v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 46
    :cond_6
    sget-object v0, Lcom/phicomm/speaker/f/d;->b:[C

    aput-char v8, v0, v7

    .line 47
    sget-object v0, Lcom/phicomm/speaker/f/d;->b:[C

    aput-char v10, v0, v9

    return-void
.end method

.method private static a([C)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 302
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 304
    aget-char v3, p0, v0

    invoke-static {v3}, Lcom/phicomm/speaker/f/d;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 305
    aget-char v4, p0, v0

    aput-char v4, p0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x8

    .line 75
    array-length v2, v0

    mul-int/2addr v2, v1

    if-nez v2, :cond_1

    const-string v0, ""

    return-object v0

    .line 80
    :cond_1
    rem-int/lit8 v3, v2, 0x18

    .line 81
    div-int/lit8 v2, v2, 0x18

    if-eqz v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    mul-int/lit8 v4, v4, 0x4

    .line 85
    new-array v4, v4, [C

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_1
    if-ge v5, v2, :cond_7

    add-int/lit8 v7, v6, 0x1

    .line 100
    aget-byte v6, v0, v6

    add-int/lit8 v9, v7, 0x1

    .line 101
    aget-byte v7, v0, v7

    add-int/lit8 v10, v9, 0x1

    .line 102
    aget-byte v9, v0, v9

    and-int/lit8 v11, v7, 0xf

    int-to-byte v11, v11

    and-int/lit8 v12, v6, 0x3

    int-to-byte v12, v12

    and-int/lit8 v13, v6, -0x80

    if-nez v13, :cond_3

    shr-int/lit8 v13, v6, 0x2

    :goto_2
    int-to-byte v13, v13

    goto :goto_3

    :cond_3
    shr-int/lit8 v13, v6, 0x2

    xor-int/lit16 v13, v13, 0xc0

    goto :goto_2

    :goto_3
    and-int/lit8 v14, v7, -0x80

    if-nez v14, :cond_4

    shr-int/lit8 v7, v7, 0x4

    :goto_4
    int-to-byte v7, v7

    goto :goto_5

    :cond_4
    shr-int/lit8 v7, v7, 0x4

    xor-int/lit16 v7, v7, 0xf0

    goto :goto_4

    :goto_5
    and-int/lit8 v14, v9, -0x80

    if-nez v14, :cond_5

    shr-int/lit8 v14, v9, 0x6

    :goto_6
    int-to-byte v14, v14

    goto :goto_7

    :cond_5
    shr-int/lit8 v14, v9, 0x6

    xor-int/lit16 v14, v14, 0xfc

    goto :goto_6

    .line 120
    :goto_7
    sget-object v15, Lcom/phicomm/speaker/f/d;->b:[C

    array-length v15, v15

    if-ge v13, v15, :cond_6

    add-int/lit8 v15, v8, 0x1

    .line 121
    sget-object v16, Lcom/phicomm/speaker/f/d;->b:[C

    aget-char v13, v16, v13

    aput-char v13, v4, v8

    goto :goto_8

    :cond_6
    move v15, v8

    :goto_8
    add-int/lit8 v8, v15, 0x1

    .line 123
    sget-object v13, Lcom/phicomm/speaker/f/d;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v7, v12

    aget-char v7, v13, v7

    aput-char v7, v4, v15

    add-int/lit8 v7, v8, 0x1

    .line 124
    sget-object v12, Lcom/phicomm/speaker/f/d;->b:[C

    shl-int/lit8 v11, v11, 0x2

    or-int/2addr v11, v14

    aget-char v11, v12, v11

    aput-char v11, v4, v8

    add-int/lit8 v8, v7, 0x1

    .line 125
    sget-object v11, Lcom/phicomm/speaker/f/d;->b:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    aput-char v9, v4, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    move v6, v10

    goto :goto_1

    :cond_7
    const/16 v2, 0x3d

    if-ne v3, v1, :cond_b

    .line 130
    array-length v1, v0

    if-ge v6, v1, :cond_8

    .line 131
    aget-byte v7, v0, v6

    :cond_8
    and-int/lit8 v0, v7, 0x3

    int-to-byte v0, v0

    and-int/lit8 v1, v7, -0x80

    if-nez v1, :cond_9

    shr-int/lit8 v1, v7, 0x2

    :goto_9
    int-to-byte v1, v1

    goto :goto_a

    :cond_9
    shr-int/lit8 v1, v7, 0x2

    xor-int/lit16 v1, v1, 0xc0

    goto :goto_9

    .line 139
    :goto_a
    sget-object v3, Lcom/phicomm/speaker/f/d;->b:[C

    array-length v3, v3

    if-ge v1, v3, :cond_a

    add-int/lit8 v3, v8, 0x1

    .line 140
    sget-object v5, Lcom/phicomm/speaker/f/d;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v4, v8

    goto :goto_b

    :cond_a
    move v3, v8

    :goto_b
    add-int/lit8 v1, v3, 0x1

    .line 142
    sget-object v5, Lcom/phicomm/speaker/f/d;->b:[C

    shl-int/lit8 v0, v0, 0x4

    aget-char v0, v5, v0

    aput-char v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    .line 143
    aput-char v2, v4, v1

    .line 144
    aput-char v2, v4, v0

    goto :goto_11

    :cond_b
    const/16 v1, 0x10

    if-ne v3, v1, :cond_10

    .line 146
    array-length v1, v0

    if-ge v6, v1, :cond_c

    .line 147
    aget-byte v7, v0, v6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 149
    aget-byte v0, v0, v6

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    and-int/lit8 v3, v7, 0x3

    int-to-byte v3, v3

    and-int/lit8 v5, v7, -0x80

    if-nez v5, :cond_d

    shr-int/lit8 v5, v7, 0x2

    :goto_c
    int-to-byte v5, v5

    goto :goto_d

    :cond_d
    shr-int/lit8 v5, v7, 0x2

    xor-int/lit16 v5, v5, 0xc0

    goto :goto_c

    :goto_d
    and-int/lit8 v6, v0, -0x80

    if-nez v6, :cond_e

    shr-int/lit8 v0, v0, 0x4

    :goto_e
    int-to-byte v0, v0

    goto :goto_f

    :cond_e
    shr-int/lit8 v0, v0, 0x4

    xor-int/lit16 v0, v0, 0xf0

    goto :goto_e

    .line 156
    :goto_f
    sget-object v6, Lcom/phicomm/speaker/f/d;->b:[C

    array-length v6, v6

    if-ge v5, v6, :cond_f

    add-int/lit8 v6, v8, 0x1

    .line 157
    sget-object v7, Lcom/phicomm/speaker/f/d;->b:[C

    aget-char v5, v7, v5

    aput-char v5, v4, v8

    goto :goto_10

    :cond_f
    move v6, v8

    :goto_10
    add-int/lit8 v5, v6, 0x1

    .line 159
    sget-object v7, Lcom/phicomm/speaker/f/d;->b:[C

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v0, v3

    aget-char v0, v7, v0

    aput-char v0, v4, v6

    add-int/lit8 v0, v5, 0x1

    .line 160
    sget-object v3, Lcom/phicomm/speaker/f/d;->b:[C

    shl-int/lit8 v1, v1, 0x2

    aget-char v1, v3, v1

    aput-char v1, v4, v5

    .line 161
    aput-char v2, v4, v0

    .line 164
    :cond_10
    :goto_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 18

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 181
    invoke-static {v1}, Lcom/phicomm/speaker/f/d;->a([C)I

    move-result v2

    .line 183
    rem-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_1

    return-object v0

    .line 188
    :cond_1
    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 191
    new-array v0, v3, [B

    return-object v0

    :cond_2
    mul-int/lit8 v4, v2, 0x3

    .line 208
    new-array v4, v4, [B

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    add-int/lit8 v12, v2, -0x1

    if-ge v5, v12, :cond_9

    add-int/lit8 v12, v6, 0x1

    .line 212
    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/lit8 v13, v12, 0x1

    aget-char v12, v1, v12

    invoke-static {v12}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v14

    if-eqz v14, :cond_8

    add-int/lit8 v14, v13, 0x1

    aget-char v13, v1, v13

    invoke-static {v13}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v15

    if-eqz v15, :cond_8

    add-int/lit8 v15, v14, 0x1

    aget-char v14, v1, v14

    invoke-static {v14}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_1

    .line 216
    :cond_3
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v3, v3

    if-ge v6, v3, :cond_4

    .line 217
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v3, v3, v6

    move v8, v3

    .line 219
    :cond_4
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v3, v3

    if-ge v12, v3, :cond_5

    .line 220
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v3, v3, v12

    move v9, v3

    .line 222
    :cond_5
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v3, v3

    if-ge v13, v3, :cond_6

    .line 223
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v3, v3, v13

    move v10, v3

    .line 225
    :cond_6
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v3, v3

    if-ge v14, v3, :cond_7

    .line 226
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v3, v3, v14

    move v11, v3

    :cond_7
    add-int/lit8 v3, v7, 0x1

    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v6, v12

    int-to-byte v6, v6

    .line 229
    aput-byte v6, v4, v7

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v7, v9, 0xf

    shl-int/lit8 v7, v7, 0x4

    shr-int/lit8 v12, v10, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v7, v12

    int-to-byte v7, v7

    .line 230
    aput-byte v7, v4, v3

    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v3, v10, 0x6

    or-int/2addr v3, v11

    int-to-byte v3, v3

    .line 231
    aput-byte v3, v4, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v15

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    :goto_1
    return-object v0

    :cond_9
    add-int/lit8 v2, v6, 0x1

    .line 234
    aget-char v3, v1, v6

    invoke-static {v3}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v6

    if-eqz v6, :cond_15

    add-int/lit8 v6, v2, 0x1

    aget-char v2, v1, v2

    invoke-static {v2}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_3

    .line 239
    :cond_a
    sget-object v11, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v11, v11

    if-ge v3, v11, :cond_b

    .line 240
    sget-object v8, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v8, v8, v3

    .line 242
    :cond_b
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v3, v3

    if-ge v2, v3, :cond_c

    .line 243
    sget-object v3, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v9, v3, v2

    :cond_c
    add-int/lit8 v2, v6, 0x1

    .line 246
    aget-char v3, v1, v6

    .line 247
    aget-char v1, v1, v2

    .line 249
    invoke-static {v3}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v1}, Lcom/phicomm/speaker/f/d;->c(C)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    .line 278
    :cond_d
    sget-object v0, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v0, v0, v3

    .line 279
    sget-object v2, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v1, v2, v1

    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v3, v8, 0x2

    shr-int/lit8 v5, v9, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    .line 280
    aput-byte v3, v4, v7

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v5, v9, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 281
    aput-byte v5, v4, v2

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 282
    aput-byte v0, v4, v3

    return-object v4

    .line 250
    :cond_e
    :goto_2
    invoke-static {v3}, Lcom/phicomm/speaker/f/d;->b(C)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Lcom/phicomm/speaker/f/d;->b(C)Z

    move-result v2

    if-eqz v2, :cond_11

    and-int/lit8 v1, v9, 0xf

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v0, v5, 0x1

    .line 255
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 256
    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    array-length v1, v0

    if-ge v7, v1, :cond_10

    shl-int/lit8 v1, v8, 0x2

    shr-int/lit8 v2, v9, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 258
    aput-byte v1, v0, v7

    :cond_10
    return-object v0

    .line 261
    :cond_11
    invoke-static {v3}, Lcom/phicomm/speaker/f/d;->b(C)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v1}, Lcom/phicomm/speaker/f/d;->b(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 262
    sget-object v1, Lcom/phicomm/speaker/f/d;->a:[B

    array-length v1, v1

    if-ge v3, v1, :cond_12

    .line 263
    sget-object v1, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte v10, v1, v3

    :cond_12
    and-int/lit8 v1, v10, 0x3

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v0, v5, 0x2

    .line 269
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 270
    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v7, 0x1

    shl-int/lit8 v2, v8, 0x2

    shr-int/lit8 v3, v9, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 271
    aput-byte v2, v0, v7

    and-int/lit8 v2, v9, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v10, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 272
    aput-byte v2, v0, v1

    return-object v0

    :cond_14
    return-object v0

    :cond_15
    :goto_3
    return-object v0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 60
    sget-object v0, Lcom/phicomm/speaker/f/d;->a:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
