.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/h;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    .line 30
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 9
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

    .prologue
    const/16 v8, 0x5d

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 309
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_0
    return-object p0

    .line 311
    :cond_0
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 312
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/16 v0, 0x54

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x46

    goto :goto_1

    .line 315
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 316
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_4
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :cond_5
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 321
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 322
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 323
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 324
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 325
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 326
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 327
    :cond_9
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 329
    :cond_a
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_c

    .line 330
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_b

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 331
    :cond_c
    instance-of v1, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v1, :cond_d

    .line 332
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 333
    :cond_d
    instance-of v1, p1, [B

    if-eqz v1, :cond_e

    .line 334
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 335
    :cond_e
    instance-of v1, p1, [Z

    if-eqz v1, :cond_f

    .line 336
    check-cast p1, [Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_0

    .line 337
    :cond_f
    instance-of v1, p1, [S

    if-eqz v1, :cond_13

    .line 338
    check-cast p1, [S

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    array-length v1, p1

    if-nez v1, :cond_11

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_12

    aget-short v3, p1, v0

    invoke-direct {v1, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 339
    :cond_13
    instance-of v1, p1, [I

    if-eqz v1, :cond_17

    .line 340
    check-cast p1, [I

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_14
    array-length v1, p1

    if-nez v1, :cond_15

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_3
    if-ge v0, v2, :cond_16

    aget v3, p1, v0

    invoke-direct {v1, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_16
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 341
    :cond_17
    instance-of v1, p1, [J

    if-eqz v1, :cond_1b

    .line 342
    check-cast p1, [J

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_18
    array-length v1, p1

    if-nez v1, :cond_19

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_19
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_4
    if-ge v0, v2, :cond_1a

    aget-wide v4, p1, v0

    invoke-direct {v1, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 343
    :cond_1b
    instance-of v1, p1, [F

    if-eqz v1, :cond_1f

    .line 344
    check-cast p1, [F

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1c

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1c
    array-length v1, p1

    if-nez v1, :cond_1d

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_5
    if-ge v0, v2, :cond_1e

    aget v3, p1, v0

    invoke-direct {v1, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 345
    :cond_1f
    instance-of v1, p1, [D

    if-eqz v1, :cond_23

    .line 346
    check-cast p1, [D

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_20

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_20
    array-length v1, p1

    if-nez v1, :cond_21

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    :goto_6
    if-ge v0, v2, :cond_22

    aget-wide v4, p1, v0

    invoke-direct {v1, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

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

    goto/16 :goto_0

    .line 350
    :cond_24
    new-instance v0, Lcom/tencent/bugly/proguard/b;

    const-string v1, "write object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 5
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

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    return-object p0

    .line 269
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 276
    invoke-direct {v1, v3, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_2
    const/16 v0, 0x5d

    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public final a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 357
    const/16 v0, 0x7b

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_0
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    return-object p0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 240
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_0
    return-object p0

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    new-instance v2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    const/16 v4, 0x28

    invoke-direct {v1, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v4, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 256
    const/16 v0, 0x29

    invoke-direct {v1, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :cond_2
    const/16 v0, 0x7d

    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public final a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public final a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v0, 0x54

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    return-object p0

    .line 40
    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public final a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 107
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string v1, "null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_0
    return-object p0

    .line 112
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v3, p1, v0

    .line 119
    invoke-direct {v1, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const/16 v0, 0x5d

    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
