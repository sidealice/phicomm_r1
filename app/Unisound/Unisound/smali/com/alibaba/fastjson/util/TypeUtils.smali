.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithJavaBean:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 856
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 858
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 859
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBaseClassMappings()V
    .locals 3

    .prologue
    .line 870
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    return-void
.end method

.method public static addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 863
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 866
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    return-void
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 15
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_1

    .line 509
    const/4 p0, 0x0

    .line 636
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 512
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 513
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "clazz is null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 516
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    .line 520
    instance-of v12, p0, Ljava/util/Map;

    if-eqz v12, :cond_4

    .line 521
    const-class v12, Ljava/util/Map;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    move-object v9, p0

    .line 525
    check-cast v9, Ljava/util/Map;

    .line 526
    .local v9, "map":Ljava/util/Map;
    const-class v12, Ljava/lang/Object;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    sget-object v12, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 530
    :cond_3
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 533
    .end local v9    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 534
    instance-of v12, p0, Ljava/util/Collection;

    if-eqz v12, :cond_6

    move-object v3, p0

    .line 536
    check-cast v3, Ljava/util/Collection;

    .line 537
    .local v3, "collection":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 538
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 539
    .local v1, "array":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 540
    .local v8, "item":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v8, v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v11

    .line 541
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v1, v7, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 542
    add-int/lit8 v7, v7, 0x1

    .line 543
    goto :goto_1

    .end local v8    # "item":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_5
    move-object p0, v1

    .line 545
    goto :goto_0

    .line 548
    .end local v1    # "array":Ljava/lang/Object;
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "index":I
    :cond_6
    const-class v12, [B

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_7

    .line 549
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 553
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 557
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_8

    const-class v12, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_9

    .line 558
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 561
    :cond_9
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_a

    const-class v12, Ljava/lang/Byte;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 562
    :cond_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 569
    :cond_b
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_c

    const-class v12, Ljava/lang/Short;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_d

    .line 570
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 573
    :cond_d
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_e

    const-class v12, Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_f

    .line 574
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 577
    :cond_f
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_10

    const-class v12, Ljava/lang/Long;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_11

    .line 578
    :cond_10
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 581
    :cond_11
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_12

    const-class v12, Ljava/lang/Float;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_13

    .line 582
    :cond_12
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 585
    :cond_13
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_14

    const-class v12, Ljava/lang/Double;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_15

    .line 586
    :cond_14
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 589
    :cond_15
    const-class v12, Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_16

    .line 590
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 593
    :cond_16
    const-class v12, Ljava/math/BigDecimal;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_17

    .line 594
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 597
    :cond_17
    const-class v12, Ljava/math/BigInteger;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_18

    .line 598
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 601
    :cond_18
    const-class v12, Ljava/util/Date;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_19

    .line 602
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 605
    :cond_19
    const-class v12, Ljava/sql/Date;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1a

    .line 606
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 609
    :cond_1a
    const-class v12, Ljava/sql/Timestamp;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1b

    .line 610
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    goto/16 :goto_0

    .line 613
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 614
    invoke-static/range {p0 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 617
    :cond_1c
    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 618
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    .line 620
    .local v4, "date":Ljava/util/Date;
    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1d

    .line 621
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 629
    .local v2, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v2

    .line 630
    goto/16 :goto_0

    .line 624
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_1d
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 625
    .end local v2    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v5

    .line 626
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not cast to : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 633
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1e
    instance-of v12, p0, Ljava/lang/String;

    if-eqz v12, :cond_1f

    move-object v10, p0

    .line 634
    check-cast v10, Ljava/lang/String;

    .line 635
    .local v10, "strVal":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1f

    .line 636
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 640
    .end local v10    # "strVal":Ljava/lang/String;
    :cond_1f
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can not cast to : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 19
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 704
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 706
    .local v12, "rawTye":Ljava/lang/reflect/Type;
    const-class v16, Ljava/util/Set;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    const-class v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    const-class v16, Ljava/util/TreeSet;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    const-class v16, Ljava/util/List;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    const-class v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_4

    .line 711
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v8, v16, v17

    .line 713
    .local v8, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 715
    const-class v16, Ljava/util/Set;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_1

    const-class v16, Ljava/util/HashSet;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_2

    .line 716
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 723
    .local v3, "collection":Ljava/util/Collection;
    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 724
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 725
    .local v7, "item":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v7, v8, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "item":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v16, Ljava/util/TreeSet;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_3

    .line 718
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 720
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 732
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v8    # "itemType":Ljava/lang/reflect/Type;
    :cond_4
    const-class v16, Ljava/util/Map;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_5

    const-class v16, Ljava/util/HashMap;

    move-object/from16 v0, v16

    if-ne v12, v0, :cond_8

    .line 733
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v10, v16, v17

    .line 734
    .local v10, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v15, v16, v17

    .line 736
    .local v15, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 737
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 739
    .local v11, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 740
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 741
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v14

    .line 743
    .local v14, "value":Ljava/lang/Object;
    invoke-interface {v11, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_6
    move-object v3, v11

    .line 760
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "keyType":Ljava/lang/reflect/Type;
    .end local v11    # "map":Ljava/util/Map;
    .end local v15    # "valueType":Ljava/lang/reflect/Type;
    :cond_7
    :goto_3
    return-object v3

    .line 750
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v13, p0

    .line 751
    check-cast v13, Ljava/lang/String;

    .line 752
    .local v13, "strVal":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_9

    .line 753
    const/4 v3, 0x0

    goto :goto_3

    .line 757
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 758
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v2, v16, v17

    .line 759
    .local v2, "argType":Ljava/lang/reflect/Type;
    instance-of v0, v2, Ljava/lang/reflect/WildcardType;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 764
    .end local v2    # "argType":Ljava/lang/reflect/Type;
    :cond_a
    new-instance v16, Lcom/alibaba/fastjson/JSONException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "can not cast to : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 676
    if-nez p0, :cond_1

    move-object p0, v1

    .line 696
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 680
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 681
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 684
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 685
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 688
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 689
    check-cast v0, Ljava/lang/String;

    .line 690
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object p0, v1

    .line 691
    goto :goto_0

    .line 695
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    .line 699
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p0, :cond_0

    move-object p0, v1

    .line 172
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 159
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 160
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 163
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 164
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 167
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    .line 169
    goto :goto_0

    .line 172
    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 176
    if-nez p0, :cond_0

    move-object p0, v1

    .line 193
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 180
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 181
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 184
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 185
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 188
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object p0, v1

    .line 190
    goto :goto_0

    .line 193
    :cond_4
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    if-nez p0, :cond_0

    move-object p0, v2

    .line 495
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 465
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 466
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 469
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 470
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 473
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 474
    check-cast v0, Ljava/lang/String;

    .line 475
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    move-object p0, v2

    .line 476
    goto :goto_0

    .line 479
    :cond_4
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 482
    :cond_5
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 483
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 486
    :cond_6
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 487
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 490
    :cond_7
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 491
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 494
    :cond_8
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p0, v2

    .line 495
    goto :goto_0

    .line 499
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 97
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 83
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 84
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 87
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 100
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 450
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 451
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    .line 455
    :goto_0
    return-object p0

    .line 454
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 457
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_0

    move-object p0, v1

    .line 123
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 108
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 109
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 112
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 115
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 120
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 126
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 247
    if-nez p0, :cond_0

    move-object p0, v7

    .line 299
    .end local p0    # "value":Ljava/lang/Object;
    .local v4, "longValue":J
    :goto_0
    return-object p0

    .line 251
    .end local v4    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v6, p0, Ljava/util/Calendar;

    if-eqz v6, :cond_1

    .line 252
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 255
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, p0, Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 256
    check-cast p0, Ljava/util/Date;

    goto :goto_0

    .line 259
    :cond_2
    const-wide/16 v4, -0x1

    .line 261
    .restart local v4    # "longValue":J
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_3

    move-object v6, p0

    .line 262
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 265
    :cond_3
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_9

    move-object v3, p0

    .line 266
    check-cast v3, Ljava/lang/String;

    .line 268
    .local v3, "strVal":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_7

    .line 270
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 271
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 280
    .local v2, "format":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 272
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5

    .line 273
    const-string v2, "yyyy-MM-dd"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_1

    .line 274
    .end local v2    # "format":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 275
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_1

    .line 277
    .end local v2    # "format":Ljava/lang/String;
    :cond_6
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v2    # "format":Ljava/lang/String;
    goto :goto_1

    .line 283
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/text/ParseException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to Date, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 288
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v2    # "format":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    move-object p0, v7

    .line 289
    goto/16 :goto_0

    .line 292
    :cond_8
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 295
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    .line 296
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to Date, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_a
    new-instance p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p0, :cond_1

    .line 240
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 226
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 227
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 230
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 243
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 14
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 646
    :try_start_0
    instance-of v11, p0, Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 647
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 648
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 663
    .end local v7    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 652
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_0

    .line 655
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    instance-of v11, p0, Ljava/lang/Number;

    if-eqz v11, :cond_3

    .line 656
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 658
    .local v8, "ordinal":I
    const-string v11, "values"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {p1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 659
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 660
    .local v10, "values":[Ljava/lang/Object;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v9, v1, v4

    .line 661
    .local v9, "value":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Ljava/lang/Enum;

    move-object v2, v0

    .line 662
    .local v2, "e":Ljava/lang/Enum;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eq v11, v8, :cond_0

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Enum;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "ordinal":I
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 668
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 671
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static final castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 197
    if-nez p0, :cond_1

    .line 215
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 201
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 202
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 205
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 218
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 421
    if-nez p0, :cond_0

    move-object p0, v1

    .line 443
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 425
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 426
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 429
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 430
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 433
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 434
    check-cast v0, Ljava/lang/String;

    .line 435
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    .line 436
    goto :goto_0

    .line 439
    :cond_3
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object p0, v1

    .line 440
    goto :goto_0

    .line 443
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 446
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 26
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v23, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 771
    const-string v23, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 772
    .local v5, "declaringClass":Ljava/lang/String;
    const-string v23, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 773
    .local v17, "methodName":Ljava/lang/String;
    const-string v23, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 776
    .local v10, "fileName":Ljava/lang/String;
    const-string v23, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Number;

    .line 777
    .local v22, "value":Ljava/lang/Number;
    if-nez v22, :cond_1

    .line 778
    const/4 v14, 0x0

    .line 784
    .local v14, "lineNumber":I
    :goto_0
    new-instance v19, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1, v10, v14}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 850
    .end local v5    # "declaringClass":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v17    # "methodName":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/Number;
    :cond_0
    :goto_1
    return-object v19

    .line 780
    .restart local v5    # "declaringClass":Ljava/lang/String;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v17    # "methodName":Ljava/lang/String;
    .restart local v22    # "value":Ljava/lang/Number;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->intValue()I

    move-result v14

    .restart local v14    # "lineNumber":I
    goto :goto_0

    .line 788
    .end local v5    # "declaringClass":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v14    # "lineNumber":I
    .end local v17    # "methodName":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/Number;
    :cond_2
    sget-object v23, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 789
    .local v12, "iClassObject":Ljava/lang/Object;
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 790
    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 792
    .local v3, "className":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 794
    .local v15, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v15, :cond_3

    .line 795
    new-instance v23, Ljava/lang/ClassNotFoundException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " not found"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v3    # "className":Ljava/lang/String;
    .end local v12    # "iClassObject":Ljava/lang/Object;
    .end local v15    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 852
    .local v6, "e":Ljava/lang/Exception;
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 798
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v12    # "iClassObject":Ljava/lang/Object;
    .restart local v15    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v19

    goto :goto_1

    .line 804
    .end local v3    # "className":Ljava/lang/String;
    .end local v15    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 807
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 808
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v18, v0

    .line 813
    .local v18, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object p1, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_1

    .line 810
    .end local v18    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v18, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v18    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 817
    .end local v18    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    if-nez p2, :cond_7

    .line 818
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 821
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v21

    .line 823
    .local v21, "setters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 824
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v23

    if-nez v23, :cond_8

    .line 825
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 827
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 829
    .local v19, "object":Ljava/lang/Object;, "TT;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 830
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 831
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 833
    .local v9, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 834
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 835
    .local v22, "value":Ljava/lang/Object;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v16

    .line 836
    .local v16, "method":Ljava/lang/reflect/Method;
    if-eqz v16, :cond_a

    .line 837
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v20, v23, v24

    .line 838
    .local v20, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v22

    .line 839
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v22, v23, v24

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 841
    .end local v20    # "paramType":Ljava/lang/reflect/Type;
    :cond_a
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    .line 842
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v20

    .line 843
    .restart local v20    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v22

    .line 844
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static final castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 381
    if-nez p0, :cond_1

    .line 413
    .local v2, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 385
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 386
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 389
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v2, p0

    .line 390
    check-cast v2, Ljava/lang/String;

    .line 391
    .restart local v2    # "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 401
    :catch_0
    move-exception v3

    .line 405
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v0, 0x0

    .line 407
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 410
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 412
    if-eqz v0, :cond_4

    .line 413
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 417
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to long, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p0, :cond_1

    .line 148
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 134
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 135
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 138
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 151
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 303
    if-nez p0, :cond_0

    move-object p0, v4

    .line 338
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 307
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 308
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 311
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Ljava/sql/Date;

    if-eqz v3, :cond_2

    .line 312
    check-cast p0, Ljava/sql/Date;

    goto :goto_0

    .line 315
    :cond_2
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 316
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 319
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 321
    .restart local v0    # "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    .line 322
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 325
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v2, p0

    .line 326
    check-cast v2, Ljava/lang/String;

    .line 327
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object p0, v4

    .line 328
    goto :goto_0

    .line 331
    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 334
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_7

    .line 335
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_7
    new-instance p0, Ljava/sql/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static final castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 342
    if-nez p0, :cond_0

    move-object p0, v4

    .line 377
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 346
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 347
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 350
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Ljava/sql/Timestamp;

    if-eqz v3, :cond_2

    .line 351
    check-cast p0, Ljava/sql/Timestamp;

    goto :goto_0

    .line 354
    :cond_2
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 355
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 358
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 360
    .restart local v0    # "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    .line 361
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 364
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v2, p0

    .line 365
    check-cast v2, Ljava/lang/String;

    .line 366
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object p0, v4

    .line 367
    goto :goto_0

    .line 370
    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 373
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_7

    .line 374
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_7
    new-instance p0, Ljava/sql/Timestamp;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0
.end method

.method public static clearClassMapping()V
    .locals 1

    .prologue
    .line 892
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 893
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 894
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 29
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    .line 951
    .local v22, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    .local v15, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v15

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    aget-object v4, v15, v23

    .line 952
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v27

    .line 953
    .local v27, "methodName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "ordinal":I
    const/4 v7, 0x0

    .line 955
    .local v7, "serialzeFeatures":I
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 959
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 963
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    .line 967
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v8, Ljava/lang/ClassLoader;

    if-eq v2, v8, :cond_0

    .line 971
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "getMetaClass"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 976
    :cond_2
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 978
    .local v14, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v14, :cond_3

    .line 979
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v14

    .line 982
    :cond_3
    if-eqz v14, :cond_5

    .line 983
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 987
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 988
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 990
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 991
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "propertyName":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 994
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 995
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1000
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1005
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_5
    const-string v2, "get"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1006
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x4

    if-lt v2, v8, :cond_0

    .line 1010
    const-string v2, "getClass"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1014
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 1017
    .local v17, "c3":C
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1018
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_c

    .line 1019
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1033
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v24

    .line 1035
    .local v24, "ignore":Z
    if-nez v24, :cond_0

    .line 1039
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1041
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_6

    .line 1042
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1044
    .local v19, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v19, :cond_6

    .line 1045
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 1050
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 1052
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1053
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1055
    if-eqz p1, :cond_6

    .line 1056
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1057
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1065
    .end local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_6
    if-eqz p1, :cond_7

    .line 1066
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1067
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1072
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v17    # "c3":C
    .end local v24    # "ignore":Z
    :cond_8
    const-string v2, "is"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x3

    if-lt v2, v8, :cond_0

    .line 1080
    const/4 v2, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 1083
    .local v16, "c2":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1084
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_10

    .line 1085
    const/4 v2, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1099
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    if-nez v5, :cond_9

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1103
    :cond_9
    if-eqz v5, :cond_a

    .line 1104
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1106
    .restart local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v19, :cond_a

    .line 1107
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 1112
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 1114
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1115
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1117
    if-eqz p1, :cond_a

    .line 1118
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1119
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1127
    .end local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_a
    if-eqz p1, :cond_b

    .line 1128
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1129
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1134
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1021
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "c2":C
    .restart local v17    # "c3":C
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1023
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_d
    const/16 v2, 0x5f

    move/from16 v0, v17

    if-ne v0, v2, :cond_e

    .line 1024
    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1025
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_e
    const/16 v2, 0x66

    move/from16 v0, v17

    if-ne v0, v2, :cond_f

    .line 1026
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1027
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x5

    if-lt v2, v8, :cond_0

    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1087
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v17    # "c3":C
    .restart local v16    # "c2":C
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1089
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_11
    const/16 v2, 0x5f

    move/from16 v0, v16

    if-ne v0, v2, :cond_12

    .line 1090
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1091
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_12
    const/16 v2, 0x66

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 1092
    const/4 v2, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1138
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "ordinal":I
    .end local v7    # "serialzeFeatures":I
    .end local v14    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v16    # "c2":C
    .end local v27    # "methodName":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .local v15, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    aget-object v5, v15, v23

    .line 1139
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1138
    :cond_14
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 1143
    :cond_15
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1145
    .restart local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v6, 0x0

    .restart local v6    # "ordinal":I
    const/4 v7, 0x0

    .line 1146
    .restart local v7    # "serialzeFeatures":I
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1147
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v19, :cond_16

    .line 1148
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1152
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 1153
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 1155
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    .line 1156
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1160
    :cond_16
    if-eqz p1, :cond_17

    .line 1161
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1162
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 1167
    :cond_17
    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1168
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v10, 0x0

    move-object v9, v3

    move-object v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1172
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "ordinal":I
    .end local v7    # "serialzeFeatures":I
    .end local v19    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_18
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v21, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v18, 0x0

    .line 1175
    .local v18, "containsAll":Z
    const/16 v28, 0x0

    .line 1177
    .local v28, "orders":[Ljava/lang/String;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1178
    .local v14, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v14, :cond_19

    .line 1179
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v28

    .line 1181
    if-eqz v28, :cond_1b

    move-object/from16 v0, v28

    array-length v2, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v2, v8, :cond_1b

    .line 1182
    const/16 v18, 0x1

    .line 1183
    move-object/from16 v15, v28

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_19

    aget-object v25, v15, v23

    .line 1184
    .local v25, "item":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1185
    const/16 v18, 0x0

    .line 1194
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v25    # "item":Ljava/lang/String;
    :cond_19
    :goto_7
    if-eqz v18, :cond_1c

    .line 1195
    move-object/from16 v15, v28

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    aget-object v25, v15, v23

    .line 1196
    .restart local v25    # "item":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1197
    .local v20, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1183
    .end local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 1190
    .end local v25    # "item":Ljava/lang/String;
    .local v15, "arr$":[Ljava/lang/reflect/Field;
    :cond_1b
    const/16 v18, 0x0

    goto :goto_7

    .line 1200
    .end local v15    # "arr$":[Ljava/lang/reflect/Field;
    :cond_1c
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1201
    .restart local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1204
    .end local v20    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1d
    if-eqz p2, :cond_1e

    .line 1205
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1209
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_1e
    return-object v21
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1360
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1354
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1358
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1359
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1360
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1305
    check-cast p0, Ljava/lang/Class;

    .line 1312
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1308
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1309
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1312
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1316
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1317
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1327
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v1

    .line 1316
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1322
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1323
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    .line 1324
    invoke-static {v4, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_1

    .line 1327
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1278
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1286
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 1282
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1283
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1341
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1343
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1344
    const/4 v1, 0x0

    .line 1347
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1331
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1333
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1334
    const/4 v1, 0x0

    .line 1337
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 13
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_5

    aget-object v6, v1, v5

    .line 1214
    .local v6, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v9, :cond_4

    aget-object v7, v2, v4

    .line 1215
    .local v7, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1214
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1219
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v11, v12, :cond_0

    .line 1223
    const/4 v10, 0x1

    .line 1224
    .local v10, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-ge v3, v11, :cond_2

    .line 1225
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1226
    const/4 v10, 0x0

    .line 1231
    :cond_2
    if-eqz v10, :cond_0

    .line 1235
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1236
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_0

    .line 1242
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v6    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v9    # "len$":I
    .end local v10    # "match":Z
    :goto_3
    return-object v0

    .line 1224
    .restart local v2    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v3    # "i":I
    .restart local v4    # "i$":I
    .restart local v6    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "len$":I
    .restart local v10    # "match":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1213
    .end local v3    # "i":I
    .end local v7    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v10    # "match":Z
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 1242
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "len$":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1266
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 1267
    const/4 v0, 0x1

    .line 1274
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return v0

    .line 1270
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1271
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1274
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 8
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 1246
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1248
    .local v3, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1249
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 1250
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    return v5

    .line 1249
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1257
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1262
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 897
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 898
    :cond_0
    const/4 v1, 0x0

    .line 941
    :cond_1
    :goto_0
    return-object v1

    .line 901
    :cond_2
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 903
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 907
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_3

    .line 908
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 909
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 912
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v4, "L"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 913
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "newClassName":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 918
    .end local v3    # "newClassName":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 920
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 921
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 923
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 927
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v4

    .line 932
    :cond_5
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 934
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->addClassMapping(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 937
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 1364
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v1, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "error":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1290
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 1291
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1292
    .local v0, "componentType":Ljava/lang/reflect/Type;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1293
    const-class p0, [B

    .line 1300
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 1295
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1296
    const-class p0, [C

    goto :goto_0
.end method
