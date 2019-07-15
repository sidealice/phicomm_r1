.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/bugly/proguard/h;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 311
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 312
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 313
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/16 p1, 0x54

    goto :goto_0

    :cond_2
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 315
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 316
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 317
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 319
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 321
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 322
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 323
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 324
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 325
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 326
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 327
    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 329
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_c

    .line 330
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_b

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 331
    :cond_c
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v0, :cond_d

    .line 332
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 333
    :cond_d
    instance-of v0, p1, [B

    if-eqz v0, :cond_e

    .line 334
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 335
    :cond_e
    instance-of v0, p1, [Z

    if-eqz v0, :cond_f

    .line 336
    check-cast p1, [Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 337
    :cond_f
    instance-of v0, p1, [S

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    .line 338
    check-cast p1, [S

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    array-length p2, p1

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p2, v0, v5}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_12

    aget-short v5, p1, v3

    invoke-direct {p2, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_12
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 339
    :cond_13
    instance-of v0, p1, [I

    if-eqz v0, :cond_17

    .line 340
    check-cast p1, [I

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_14
    array-length p2, p1

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_15
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p2, v0, v5}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_2
    if-ge v3, v0, :cond_16

    aget v5, p1, v3

    invoke-direct {p2, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_16
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 341
    :cond_17
    instance-of v0, p1, [J

    if-eqz v0, :cond_1b

    .line 342
    check-cast p1, [J

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_18
    array-length p2, p1

    if-nez p2, :cond_19

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_19
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p2, v0, v5}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_3
    if-ge v3, v0, :cond_1a

    aget-wide v5, p1, v3

    invoke-direct {p2, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1a
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 343
    :cond_1b
    instance-of v0, p1, [F

    if-eqz v0, :cond_1f

    .line 344
    check-cast p1, [F

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1c
    array-length p2, p1

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1d
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p2, v0, v5}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_4
    if-ge v3, v0, :cond_1e

    aget v5, p1, v3

    invoke-direct {p2, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1e
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 345
    :cond_1f
    instance-of v0, p1, [D

    if-eqz v0, :cond_23

    .line 346
    check-cast p1, [D

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_20
    array-length p2, p1

    if-nez p2, :cond_21

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_21
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p2, v0, v5}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_5
    if-ge v3, v0, :cond_22

    aget-wide v5, p1, v3

    invoke-direct {p2, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_22
    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 347
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 348
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    :goto_6
    return-object p0

    .line 350
    :cond_24
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    const-string p2, "write object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 269
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 270
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 273
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 276
    invoke-direct {p2, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 277
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 20
    :goto_0
    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 74
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .line 357
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 359
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/StringBuilder;I)V

    :goto_0
    const/16 p1, 0x7d

    const/4 p2, 0x0

    .line 364
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 95
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 246
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", {}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 249
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", {\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v4, 0x28

    .line 253
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    const/16 v1, 0x29

    .line 256
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d

    .line 258
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 60
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 5

    .line 107
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 112
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 113
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v0, :cond_2

    aget-byte v4, p1, v1

    .line 119
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 120
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method
