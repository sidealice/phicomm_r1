.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 40
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 43
    iget-object p3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length p3, p3

    new-array p3, p3, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 44
    iget-object p3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p3, p3

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 45
    iget-object v3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 46
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 50
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v5, v3

    move-object v6, v2

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v3, v2

    if-nez v6, :cond_0

    .line 52
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 54
    :cond_0
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v6

    goto :goto_0

    .line 57
    :cond_2
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 59
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    new-array p1, p1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 60
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p1, p1

    :goto_2
    if-ge v0, p1, :cond_3

    .line 61
    iget-object p2, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p2, p2, v0

    .line 62
    iget-object p2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 341
    const-class v2, Lcom/alibaba/fastjson/JSON;

    if-eq v9, v2, :cond_82

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v2, :cond_0

    goto/16 :goto_44

    .line 345
    :cond_0
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 347
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x8

    const/16 v12, 0x10

    const/4 v13, 0x0

    if-ne v2, v3, :cond_1

    .line 349
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v13

    .line 353
    :cond_1
    iget-boolean v14, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 355
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz p4, :cond_2

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    move-object v15, v3

    const/16 v6, 0xd

    if-ne v2, v6, :cond_4

    .line 365
    :try_start_0
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez p4, :cond_3

    .line 367
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object/from16 v1, p4

    .line 853
    :goto_0
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object/from16 v5, p4

    :goto_1
    move-object v1, v0

    goto/16 :goto_43

    :cond_4
    const/16 v3, 0xe

    const/4 v5, 0x0

    if-ne v2, v3, :cond_7

    .line 373
    :try_start_1
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v3, :cond_6

    iget v3, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_7

    .line 376
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v2

    :cond_7
    const/16 v3, 0xc

    const/4 v4, 0x4

    if-eq v2, v3, :cond_b

    if-eq v2, v12, :cond_b

    .line 381
    :try_start_2
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_8

    .line 853
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v13

    :cond_8
    if-ne v2, v4, :cond_9

    .line 386
    :try_start_3
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 388
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 853
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v13

    .line 393
    :cond_9
    :try_start_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    instance-of v3, v10, Ljava/lang/String;

    if-eqz v3, :cond_a

    const-string v3, ", fieldName "

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 403
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 406
    :cond_b
    :try_start_5
    iget v2, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_f

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 407
    :try_start_6
    iput v5, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 410
    :cond_c
    :try_start_7
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 413
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    const-wide/16 v17, 0x0

    move v1, v5

    move-object/from16 v20, v13

    move-object/from16 v21, v20

    move/from16 v19, v14

    move-wide/from16 v13, v17

    move-object/from16 v5, p4

    :goto_4
    cmp-long v22, v13, v17

    if-eqz v22, :cond_e

    .line 420
    :try_start_8
    invoke-virtual {v7, v13, v14}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 422
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 423
    iget-object v4, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_5
    move-wide/from16 v23, v17

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_6
    move-object/from16 v13, v20

    goto/16 :goto_43

    :cond_e
    move-wide/from16 v23, v13

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-nez v13, :cond_10

    if-ge v1, v2, :cond_f

    .line 430
    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v13, v4, v1

    .line 431
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 432
    iget-object v4, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v1, v1, 0x1

    :cond_10
    :goto_8
    move/from16 v22, v1

    const-wide/16 v25, 0x0

    if-eqz v13, :cond_35

    move/from16 v27, v2

    .line 448
    iget-wide v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 449
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, -0x2

    if-eq v4, v12, :cond_32

    const-class v12, Ljava/lang/Integer;

    if-ne v4, v12, :cond_11

    goto/16 :goto_12

    .line 460
    :cond_11
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v12, :cond_2f

    const-class v12, Ljava/lang/Long;

    if-ne v4, v12, :cond_12

    goto/16 :goto_f

    .line 471
    :cond_12
    const-class v12, Ljava/lang/String;

    if-ne v4, v12, :cond_15

    .line 472
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v1

    .line 474
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_13

    :goto_9
    move-object/from16 v30, v1

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x1

    :goto_a
    const/4 v12, 0x0

    goto/16 :goto_19

    .line 477
    :cond_13
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 478
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    :cond_14
    move-object/from16 v30, v1

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_a

    .line 481
    :cond_15
    const-class v12, Ljava/util/Date;

    if-ne v4, v12, :cond_17

    .line 482
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v1

    .line 484
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_16

    goto :goto_9

    .line 487
    :cond_16
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 488
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 491
    :cond_17
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v12, :cond_2d

    const-class v12, Ljava/lang/Boolean;

    if-ne v4, v12, :cond_18

    goto/16 :goto_e

    .line 502
    :cond_18
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v12, :cond_2a

    const-class v12, Ljava/lang/Float;

    if-ne v4, v12, :cond_19

    goto/16 :goto_d

    .line 512
    :cond_19
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v12, :cond_28

    const-class v12, Ljava/lang/Double;

    if-ne v4, v12, :cond_1a

    goto/16 :goto_c

    .line 522
    :cond_1a
    iget-boolean v12, v14, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v12, :cond_1d

    iget-object v12, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 523
    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    instance-of v12, v12, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v12, :cond_1d

    .line 525
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v1

    .line 527
    iget v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_1b

    .line 531
    invoke-virtual {v13, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_b

    .line 532
    :cond_1b
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v6, :cond_1c

    .line 533
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_b
    move-object/from16 v30, v1

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    goto :goto_a

    .line 536
    :cond_1d
    const-class v12, [I

    if-ne v4, v12, :cond_1f

    .line 537
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v1

    .line 539
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_1e

    goto/16 :goto_9

    .line 542
    :cond_1e
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 543
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 546
    :cond_1f
    const-class v12, [F

    if-ne v4, v12, :cond_21

    .line 547
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v1

    .line 549
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_20

    goto/16 :goto_9

    .line 552
    :cond_20
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 553
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 556
    :cond_21
    const-class v12, [D

    if-ne v4, v12, :cond_23

    .line 557
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v1

    .line 559
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_22

    goto/16 :goto_9

    .line 562
    :cond_22
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 563
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 566
    :cond_23
    const-class v12, [[F

    if-ne v4, v12, :cond_25

    .line 567
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v1

    .line 569
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_24

    goto/16 :goto_9

    .line 572
    :cond_24
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 573
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 576
    :cond_25
    const-class v12, [[D

    if-ne v4, v12, :cond_27

    .line 577
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v1

    .line 579
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_26

    goto/16 :goto_9

    .line 582
    :cond_26
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 583
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 586
    :cond_27
    iget-wide v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v1

    if-eqz v1, :cond_38

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_16

    .line 513
    :cond_28
    :goto_c
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v25

    .line 515
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_29

    move-wide/from16 v28, v17

    goto :goto_10

    .line 518
    :cond_29
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v6, :cond_36

    .line 519
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_13

    .line 503
    :cond_2a
    :goto_d
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v1

    .line 505
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_2b

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    goto :goto_11

    .line 508
    :cond_2b
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_2c

    .line 509
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_13

    :cond_2c
    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    goto/16 :goto_15

    .line 493
    :cond_2d
    :goto_e
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 495
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_2e

    goto/16 :goto_9

    .line 498
    :cond_2e
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_14

    .line 499
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_13

    .line 462
    :cond_2f
    :goto_f
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v1

    .line 464
    iget v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v12, :cond_30

    move-wide/from16 v28, v1

    :goto_10
    move-wide/from16 v31, v25

    const/4 v1, 0x0

    :goto_11
    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_17

    .line 467
    :cond_30
    iget v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v12, v6, :cond_31

    .line 468
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_13

    :cond_31
    move-wide/from16 v28, v1

    goto :goto_14

    .line 451
    :cond_32
    :goto_12
    invoke-virtual {v11, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v1

    .line 453
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_33

    move v12, v1

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_18

    .line 456
    :cond_33
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v2, v6, :cond_34

    .line 457
    iget-wide v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_13
    move/from16 v1, v22

    move/from16 v2, v27

    const/4 v4, 0x4

    const/16 v6, 0xd

    goto/16 :goto_22

    :cond_34
    move v12, v1

    move-wide/from16 v28, v17

    move-wide/from16 v31, v25

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_18

    :cond_35
    move/from16 v27, v2

    :cond_36
    move-wide/from16 v28, v17

    :goto_14
    move-wide/from16 v31, v25

    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    :goto_16
    const/4 v6, 0x0

    :goto_17
    const/4 v12, 0x0

    :goto_18
    const/16 v30, 0x0

    :goto_19
    if-nez v2, :cond_51

    move-object/from16 v33, v14

    .line 594
    :try_start_9
    iget-object v14, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-nez v14, :cond_39

    move/from16 v34, v12

    .line 597
    :try_start_a
    iget v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v35, v1

    const/16 v1, 0xd

    if-ne v12, v1, :cond_37

    const/16 v1, 0x10

    .line 599
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v1, v20

    goto/16 :goto_20

    :cond_37
    const/16 v1, 0x10

    if-ne v12, v1, :cond_3a

    :cond_38
    move-object/from16 v1, v20

    const/16 v12, 0xd

    goto/16 :goto_21

    :cond_39
    move/from16 v35, v1

    move/from16 v34, v12

    :cond_3a
    :try_start_b
    const-string v1, "$ref"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/16 v12, 0x3a

    if-ne v1, v14, :cond_44

    if-eqz v15, :cond_44

    .line 608
    :try_start_c
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 609
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_43

    .line 611
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    .line 612
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v2, :cond_3b

    .line 613
    :try_start_d
    iget-object v1, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1c

    :cond_3b
    :try_start_e
    const-string v2, ".."

    .line 614
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_3d

    .line 615
    :try_start_f
    iget-object v2, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 616
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_3c

    .line 617
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1c

    .line 619
    :cond_3c
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 620
    iput v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_1b

    :cond_3d
    :try_start_10
    const-string v2, "$"

    .line 622
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v2, :cond_40

    move-object v2, v15

    .line 624
    :goto_1a
    :try_start_11
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_3e

    .line 625
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_1a

    .line 628
    :cond_3e
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_3f

    .line 629
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_1c

    .line 631
    :cond_3f
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 632
    iput v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_1b

    .line 635
    :cond_40
    :try_start_12
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v15, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v1, 0x1

    .line 636
    iput v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :goto_1b
    move-object v1, v5

    :goto_1c
    const/16 v2, 0xd

    .line 642
    :try_start_13
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 643
    iget v3, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eq v3, v2, :cond_41

    .line 644
    :try_start_14
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "illegal ref"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v0

    move-object v5, v1

    move-object/from16 v13, v20

    goto/16 :goto_1

    :cond_41
    const/16 v2, 0x10

    .line 646
    :try_start_15
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 648
    invoke-virtual {v8, v15, v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v2, v20

    if-eqz v2, :cond_42

    .line 851
    iput-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 853
    :cond_42
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_3
    move-exception v0

    move-object/from16 v2, v20

    move-object v5, v1

    move-object v13, v2

    goto/16 :goto_1

    :cond_43
    move-object/from16 v2, v20

    .line 639
    :try_start_16
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal ref, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_1d

    :catchall_5
    move-exception v0

    move-object/from16 v2, v20

    :goto_1d
    move-object v1, v0

    move-object v13, v2

    goto/16 :goto_43

    :cond_44
    move-object/from16 v1, v20

    if-eqz v3, :cond_46

    .line 654
    :try_start_17
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_45

    goto :goto_1e

    :cond_45
    move v2, v12

    goto :goto_1f

    :catchall_6
    move-exception v0

    goto/16 :goto_26

    :cond_46
    :goto_1e
    const-string v12, "@type"

    if-ne v12, v14, :cond_50

    const/16 v2, 0x3a

    .line 656
    :goto_1f
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 657
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4f

    .line 658
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 659
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 661
    instance-of v4, v9, Ljava/lang/Class;

    if-eqz v4, :cond_48

    move-object v4, v9

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 662
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0xd

    if-ne v2, v12, :cond_47

    .line 663
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_20
    move-object v13, v1

    move-object v12, v5

    move-object/from16 v1, v21

    const/16 v16, 0x0

    goto/16 :goto_3a

    :cond_47
    :goto_21
    move-object/from16 v20, v1

    move v6, v12

    move/from16 v1, v22

    move-wide/from16 v13, v23

    move/from16 v2, v27

    const/4 v4, 0x4

    :goto_22
    const/16 v12, 0x10

    goto/16 :goto_4

    .line 669
    :cond_48
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    invoke-virtual {v7, v4, v6, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 672
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v4, v2, v6, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v13

    .line 674
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4a

    if-eqz v13, :cond_49

    .line 676
    invoke-virtual {v4, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_23

    .line 679
    :cond_49
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "type not match"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    :cond_4a
    :goto_23
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    goto :goto_24

    :cond_4b
    const/4 v13, 0x0

    .line 684
    :goto_24
    instance-of v6, v4, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v6, :cond_4c

    .line 685
    check-cast v4, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    const/4 v6, 0x0

    .line 686
    invoke-direct {v4, v8, v13, v10, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v3, :cond_4d

    .line 688
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 689
    invoke-virtual {v3, v6, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    .line 692
    :cond_4c
    invoke-interface {v4, v8, v13, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :cond_4d
    :goto_25
    if-eqz v1, :cond_4e

    .line 851
    iput-object v5, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 853
    :cond_4e
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v6

    .line 696
    :cond_4f
    :try_start_18
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :cond_50
    const/16 v12, 0xd

    goto :goto_27

    :catchall_7
    move-exception v0

    move-object/from16 v1, v20

    :goto_26
    move-object v13, v1

    goto/16 :goto_1

    :cond_51
    move/from16 v35, v1

    move/from16 v34, v12

    move-object/from16 v33, v14

    move-object/from16 v1, v20

    const/16 v12, 0xd

    const/4 v14, 0x0

    :goto_27
    if-nez v5, :cond_53

    if-nez v21, :cond_53

    .line 702
    :try_start_19
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-nez v12, :cond_52

    .line 704
    :try_start_1a
    new-instance v5, Ljava/util/HashMap;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-object/from16 v36, v1

    :try_start_1b
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_29

    :catchall_8
    move-exception v0

    goto :goto_28

    :catchall_9
    move-exception v0

    move-object/from16 v36, v1

    :goto_28
    move-object v1, v0

    move-object v5, v12

    goto :goto_2a

    :cond_52
    move-object/from16 v36, v1

    move-object/from16 v5, v21

    :goto_29
    if-nez v19, :cond_54

    .line 707
    invoke-virtual {v8, v15, v12, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v20, v1

    goto :goto_2b

    :catchall_a
    move-exception v0

    move-object/from16 v36, v1

    move-object v1, v0

    :goto_2a
    move-object/from16 v13, v36

    goto/16 :goto_43

    :cond_53
    move-object/from16 v36, v1

    move-object v12, v5

    move-object/from16 v5, v21

    :cond_54
    move-object/from16 v20, v36

    :goto_2b
    if-eqz v2, :cond_6d

    if-nez v6, :cond_55

    .line 713
    :try_start_1c
    invoke-virtual {v13, v8, v12, v9, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object v10, v3

    move-object/from16 v21, v5

    move/from16 v9, v27

    :goto_2c
    const/4 v13, 0x1

    const/16 v14, 0xd

    const/16 v16, 0x0

    goto/16 :goto_38

    :cond_55
    if-nez v12, :cond_5e

    .line 716
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_5c

    const-class v1, Ljava/lang/Integer;

    if-ne v4, v1, :cond_56

    goto :goto_2f

    .line 718
    :cond_56
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_5b

    const-class v1, Ljava/lang/Long;

    if-ne v4, v1, :cond_57

    goto :goto_2e

    .line 720
    :cond_57
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_5a

    const-class v1, Ljava/lang/Float;

    if-ne v4, v1, :cond_58

    goto :goto_2d

    .line 722
    :cond_58
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_59

    const-class v1, Ljava/lang/Double;

    if-ne v4, v1, :cond_5d

    .line 723
    :cond_59
    new-instance v1, Ljava/lang/Double;

    move-wide/from16 v13, v31

    invoke-direct {v1, v13, v14}, Ljava/lang/Double;-><init>(D)V

    goto :goto_31

    .line 721
    :cond_5a
    :goto_2d
    new-instance v1, Ljava/lang/Float;

    move/from16 v2, v35

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_31

    :cond_5b
    :goto_2e
    move-wide/from16 v1, v28

    .line 719
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    goto :goto_30

    :cond_5c
    :goto_2f
    move/from16 v1, v34

    .line 717
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    :cond_5d
    :goto_30
    move-object/from16 v1, v30

    :goto_31
    move-object/from16 v14, v33

    .line 725
    iget-object v2, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    move-object/from16 v38, v3

    move-object/from16 v37, v5

    goto/16 :goto_36

    :cond_5e
    move-object/from16 v37, v5

    move-wide/from16 v5, v28

    move-wide/from16 v9, v31

    move-object/from16 v14, v33

    move/from16 v1, v34

    move/from16 v2, v35

    if-nez v30, :cond_6b

    move-object/from16 v38, v3

    .line 728
    :try_start_1d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v3, :cond_69

    const-class v3, Ljava/lang/Integer;

    if-ne v4, v3, :cond_5f

    goto/16 :goto_35

    .line 734
    :cond_5f
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_67

    const-class v1, Ljava/lang/Long;

    if-ne v4, v1, :cond_60

    goto :goto_34

    .line 740
    :cond_60
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_65

    const-class v1, Ljava/lang/Float;

    if-ne v4, v1, :cond_61

    goto :goto_33

    .line 746
    :cond_61
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v1, :cond_63

    const-class v1, Ljava/lang/Double;

    if-ne v4, v1, :cond_62

    goto :goto_32

    :cond_62
    move-object/from16 v1, v30

    .line 753
    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 747
    :cond_63
    :goto_32
    iget-boolean v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_64

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v1, :cond_64

    .line 748
    invoke-virtual {v13, v12, v9, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_36

    .line 750
    :cond_64
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v9, v10}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 741
    :cond_65
    :goto_33
    iget-boolean v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_66

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v1, :cond_66

    .line 742
    invoke-virtual {v13, v12, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto :goto_36

    .line 744
    :cond_66
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 735
    :cond_67
    :goto_34
    iget-boolean v1, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_68

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v1, :cond_68

    .line 736
    invoke-virtual {v13, v12, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_36

    .line 738
    :cond_68
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 729
    :cond_69
    :goto_35
    iget-boolean v2, v14, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v2, :cond_6a

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v2, :cond_6a

    .line 730
    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_36

    .line 732
    :cond_6a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    goto :goto_36

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 756
    :try_start_1e
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6b
    move-object/from16 v38, v3

    move-object/from16 v1, v30

    .line 759
    invoke-virtual {v13, v12, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 761
    :goto_36
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_6c

    move-object/from16 v21, v37

    const/16 v16, 0x0

    goto :goto_39

    :cond_6c
    move/from16 v9, v27

    move-object/from16 v21, v37

    move-object/from16 v10, v38

    goto/16 :goto_2c

    :cond_6d
    move-object/from16 v38, v3

    move-object/from16 v37, v5

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v1, v7

    move/from16 v9, v27

    move-object v2, v8

    move-object/from16 v10, v38

    move-object v3, v14

    move v14, v4

    move v13, v5

    move-object v4, v12

    move-object/from16 v21, v37

    const/16 v16, 0x0

    move-object/from16 v5, p2

    const/16 v14, 0xd

    move-object/from16 v6, v21

    .line 766
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 768
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v14, :cond_6e

    .line 769
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_39

    :cond_6e
    const/16 v2, 0x10

    :goto_37
    move-object/from16 v3, p3

    const/4 v5, 0x0

    goto/16 :goto_41

    .line 774
    :cond_6f
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_70

    .line 775
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error, unexpect token \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_70
    :goto_38
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_71

    goto :goto_37

    .line 783
    :cond_71
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v14, :cond_7e

    .line 784
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    :goto_39
    move-object/from16 v13, v20

    move-object/from16 v1, v21

    :goto_3a
    if-nez v12, :cond_7c

    if-nez v1, :cond_74

    .line 799
    :try_start_1f
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-nez v13, :cond_72

    move-object/from16 v3, p3

    .line 801
    :try_start_20
    invoke-virtual {v8, v15, v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move-object v13, v2

    goto :goto_3b

    :catchall_b
    move-exception v0

    move-object v5, v1

    goto/16 :goto_1

    :cond_72
    :goto_3b
    if-eqz v13, :cond_73

    .line 851
    iput-object v1, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 853
    :cond_73
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :catchall_c
    move-exception v0

    move-object v1, v0

    move-object v5, v12

    goto/16 :goto_43

    .line 806
    :cond_74
    :try_start_21
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 807
    array-length v3, v2

    goto :goto_3c

    :cond_75
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v3

    .line 808
    :goto_3c
    new-array v4, v3, [Ljava/lang/Object;

    move/from16 v5, v16

    :goto_3d
    if-ge v5, v3, :cond_78

    .line 810
    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v2, :cond_76

    .line 813
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3e

    .line 815
    :cond_76
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_3e
    if-nez v9, :cond_77

    .line 818
    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 820
    :cond_77
    aput-object v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 823
    :cond_78
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    if-eqz v3, :cond_7b

    .line 825
    :try_start_22
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    if-eqz v2, :cond_7a

    .line 832
    :try_start_23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_79
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 833
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 835
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    goto :goto_3f

    :catchall_d
    move-exception v0

    move-object v1, v0

    move-object v5, v3

    goto/16 :goto_43

    :cond_7a
    move-object v12, v3

    goto :goto_40

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 827
    :try_start_24
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 828
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 839
    :cond_7b
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    if-eqz v1, :cond_7c

    .line 841
    :try_start_25
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    move-object v12, v1

    goto :goto_40

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 843
    :try_start_26
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create factory method error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    :cond_7c
    :goto_40
    if-eqz v13, :cond_7d

    .line 851
    iput-object v12, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 853
    :cond_7d
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    :cond_7e
    move-object/from16 v3, p3

    const/4 v5, 0x0

    .line 788
    :try_start_27
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x12

    if-eq v1, v4, :cond_80

    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v13, :cond_7f

    goto :goto_42

    :cond_7f
    :goto_41
    move-object v5, v12

    move v6, v14

    move/from16 v1, v22

    move-wide/from16 v13, v23

    const/4 v4, 0x4

    move v12, v2

    move v2, v9

    move-object/from16 v9, p2

    move-object/from16 v39, v10

    move-object v10, v3

    move-object/from16 v3, v39

    goto/16 :goto_4

    .line 789
    :cond_80
    :goto_42
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    :catchall_e
    move-exception v0

    move-object v1, v0

    move-object v5, v12

    goto/16 :goto_6

    :catchall_f
    move-exception v0

    move-object v5, v13

    move-object v1, v0

    move-object/from16 v5, p4

    :goto_43
    if-eqz v13, :cond_81

    .line 851
    iput-object v5, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 853
    :cond_81
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1

    .line 342
    :cond_82
    :goto_44
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 121
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 122
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/4 v6, 0x0

    array-length v5, v5

    :goto_0
    const/16 v7, 0x10

    const/16 v8, 0x2c

    if-ge v6, v5, :cond_2f

    add-int/lit8 v10, v5, -0x1

    const/16 v11, 0x5d

    if-ne v6, v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    move v10, v8

    .line 127
    :goto_1
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v12, v12, v6

    .line 128
    iget-object v13, v12, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 129
    iget-object v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 131
    :try_start_0
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v9, 0xf

    if-ne v14, v15, :cond_6

    .line 132
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v14

    long-to-int v10, v14

    .line 133
    iget-boolean v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v14, :cond_1

    .line 134
    iget-object v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v4, v10}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 136
    :cond_1
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    :goto_2
    iget-char v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v10, v8, :cond_3

    .line 140
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 141
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_2

    const/16 v9, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 143
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 144
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 145
    :cond_3
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_5

    .line 146
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 147
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_4

    const/16 v7, 0x1a

    goto :goto_4

    :cond_4
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 149
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 150
    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 152
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_5
    move-object/from16 v15, p3

    goto/16 :goto_19

    .line 154
    :cond_6
    const-class v15, Ljava/lang/String;

    const/16 v9, 0x22

    if-ne v14, v15, :cond_f

    .line 156
    iget-char v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v10, v9, :cond_7

    .line 157
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 158
    :cond_7
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_e

    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "null"

    iget v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 159
    invoke-virtual {v9, v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 160
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, 0x4

    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 162
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 163
    iget v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v14, :cond_8

    const/16 v9, 0x1a

    goto :goto_6

    :cond_8
    iget-object v10, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 165
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v9, 0x0

    .line 172
    :goto_7
    iget-boolean v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v10, :cond_9

    .line 173
    iget-object v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 175
    :cond_9
    invoke-virtual {v12, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    :goto_8
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_b

    .line 179
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 180
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_a

    const/16 v9, 0x1a

    goto :goto_9

    :cond_a
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 182
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_9
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 183
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 184
    :cond_b
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_d

    .line 185
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 186
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_c

    const/16 v9, 0x1a

    goto :goto_a

    :cond_c
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 188
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_a
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0xf

    .line 189
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_5

    .line 191
    :cond_d
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_5

    .line 169
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not match string. feild : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    move-object/from16 v15, p3

    .line 193
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v9, :cond_15

    .line 194
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v9

    .line 195
    iget-boolean v14, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v14, :cond_10

    .line 196
    iget-object v12, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v4, v9, v10}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_b

    .line 198
    :cond_10
    new-instance v14, Ljava/lang/Long;

    invoke-direct {v14, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v12, v4, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    :goto_b
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_12

    .line 202
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 203
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_11

    const/16 v9, 0x1a

    goto :goto_c

    :cond_11
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 205
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_c
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 206
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 207
    :cond_12
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_14

    .line 208
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 209
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_13

    const/16 v9, 0x1a

    goto :goto_d

    :cond_13
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 211
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_d
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0xf

    .line 212
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 214
    :cond_14
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 216
    :cond_15
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v9, :cond_1b

    .line 217
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v9

    .line 218
    iget-boolean v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v10, :cond_16

    .line 219
    iget-object v10, v13, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v4, v9}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_e

    .line 221
    :cond_16
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    :goto_e
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_18

    .line 225
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 226
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_17

    const/16 v9, 0x1a

    goto :goto_f

    :cond_17
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 228
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_f
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 229
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 230
    :cond_18
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_1a

    .line 231
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 232
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_19

    const/16 v9, 0x1a

    goto :goto_10

    :cond_19
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 234
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_10
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0xf

    .line 235
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 237
    :cond_1a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 239
    :cond_1b
    invoke-virtual {v14}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 240
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v10, 0x22

    if-ne v9, v10, :cond_1d

    .line 243
    iget-object v9, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1c

    const/4 v9, 0x0

    goto :goto_11

    .line 246
    :cond_1c
    invoke-static {v14, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    goto :goto_11

    :cond_1d
    const/16 v10, 0x30

    if-lt v9, v10, :cond_22

    const/16 v10, 0x39

    if-gt v9, v10, :cond_22

    .line 248
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v9

    long-to-int v9, v9

    .line 250
    move-object v10, v12

    check-cast v10, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v14, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v14}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 251
    iget-object v10, v10, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v9, v10, v9

    .line 256
    :goto_11
    invoke-virtual {v12, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_1f

    .line 259
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 260
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_1e

    const/16 v9, 0x1a

    goto :goto_12

    :cond_1e
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 262
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_12
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 263
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 264
    :cond_1f
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_21

    .line 265
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 266
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_20

    const/16 v9, 0x1a

    goto :goto_13

    :cond_20
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 268
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_13
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0xf

    .line 269
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 271
    :cond_21
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 253
    :cond_22
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal enum."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_23
    const-class v9, Ljava/util/Date;

    if-ne v14, v9, :cond_28

    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v14, 0x31

    if-ne v9, v14, :cond_28

    .line 274
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v9

    .line 275
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v4, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_25

    .line 278
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 279
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_24

    const/16 v9, 0x1a

    goto :goto_14

    :cond_24
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 281
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_14
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 282
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 283
    :cond_25
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v11, :cond_27

    .line 284
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 285
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_26

    const/16 v9, 0x1a

    goto :goto_15

    :cond_26
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 287
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_15
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0xf

    .line 288
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 290
    :cond_27
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_19

    .line 293
    :cond_28
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v14, 0x5b

    if-ne v9, v14, :cond_2a

    .line 294
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 295
    iget v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v14, :cond_29

    const/16 v9, 0x1a

    goto :goto_16

    :cond_29
    iget-object v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 297
    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_16
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0xe

    .line 298
    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    .line 299
    :cond_2a
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v14, 0x7b

    if-ne v9, v14, :cond_2c

    .line 300
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 301
    iget v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v14, :cond_2b

    const/16 v9, 0x1a

    goto :goto_17

    :cond_2b
    iget-object v14, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 303
    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_17
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0xc

    .line 304
    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    .line 306
    :cond_2c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 309
    :goto_18
    iget-object v9, v13, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v4, v9, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    if-ne v10, v11, :cond_2d

    .line 312
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xf

    if-eq v7, v8, :cond_2e

    .line 313
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    if-ne v10, v8, :cond_2e

    .line 316
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v8, v7, :cond_2e

    .line 317
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2e
    :goto_19
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 322
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 326
    :cond_2f
    iget-char v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v8, :cond_31

    .line 327
    iget v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 328
    iget v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_30

    const/16 v9, 0x1a

    goto :goto_1a

    :cond_30
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 330
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1a
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 331
    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1b

    .line 333
    :cond_31
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1b
    return-object v4
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 914
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 916
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_7

    .line 919
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v3

    .line 920
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v5, :cond_1

    .line 921
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    new-array v5, v5, [J

    move v6, v13

    .line 922
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 923
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 925
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 926
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 931
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "is"

    .line 933
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    .line 934
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v5

    .line 935
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    goto :goto_1

    :cond_2
    move v4, v13

    :cond_3
    :goto_1
    if-ltz v3, :cond_7

    .line 939
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    const/4 v6, -0x1

    if-nez v5, :cond_6

    .line 940
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v5, v5

    new-array v5, v5, [I

    .line 941
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    move v7, v13

    .line 942
    :goto_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 943
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v9, v9, v7

    iget-object v9, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 944
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v14

    .line 943
    invoke-static {v8, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_4

    .line 946
    aput v7, v5, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 949
    :cond_5
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 952
    :cond_6
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    aget v3, v5, v3

    if-eq v3, v6, :cond_7

    .line 954
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v2, v3

    .line 955
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_7

    .line 956
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_7

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    const/4 v2, 0x0

    .line 963
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/4 v14, 0x1

    if-nez v2, :cond_10

    .line 964
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int/2addr v4, v3

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    .line 967
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_e

    .line 968
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v14, v4, v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 969
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_3
    if-eqz v4, :cond_d

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_d

    .line 970
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 971
    array-length v6, v5

    move v7, v13

    :goto_4
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    .line 972
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 973
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    if-eqz v15, :cond_9

    goto :goto_5

    .line 976
    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v16, v15, 0x10

    if-nez v16, :cond_b

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_a

    goto :goto_5

    .line 980
    :cond_a
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 969
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    .line 983
    :cond_d
    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 986
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 988
    instance-of v2, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v2, :cond_f

    .line 989
    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    goto :goto_6

    .line 991
    :cond_f
    move-object v7, v3

    check-cast v7, Ljava/lang/reflect/Field;

    .line 992
    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 993
    new-instance v15, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 994
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v15}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 995
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_6
    if-nez v2, :cond_11

    .line 1001
    invoke-virtual {v0, v1, v11, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    return v13

    :cond_11
    const/16 v3, 0x3a

    .line 1006
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1008
    invoke-virtual {v2, v1, v11, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    return v14
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5

    .line 68
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    check-cast p2, Ljava/lang/Class;

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 72
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 73
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 74
    new-array p1, v1, [Ljava/lang/Class;

    aput-object p2, p1, v2

    invoke-static {v0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez p2, :cond_2

    return-object v0

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez p2, :cond_3

    return-object v0

    .line 89
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 90
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v3, :cond_5

    if-eqz p2, :cond_4

    .line 92
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 94
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 97
    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_7

    .line 100
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v1, p1, v2

    .line 103
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_6

    const-string v3, ""

    .line 104
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object p2

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1056
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1062
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 1064
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1065
    invoke-static {v1, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    .line 1066
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1069
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1070
    invoke-static {v1, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 1071
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 1078
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1079
    array-length v0, p2

    .line 1080
    new-array v3, v0, [Ljava/lang/Object;

    :goto_1
    if-ge v2, v0, :cond_5

    .line 1082
    aget-object v4, p2, v2

    .line 1083
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1085
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 1087
    :cond_4
    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1090
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_6

    .line 1092
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1094
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1095
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    :goto_2
    return-object v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 875
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    if-ge v2, v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v1, v2

    .line 877
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gt v2, v1, :cond_6

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 890
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 892
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    .line 899
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p1, v3

    return-object p1

    .line 903
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 904
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p1

    :cond_7
    return-object v0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    .line 858
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v1, v0

    .line 860
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 6

    .line 1103
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1107
    :cond_0
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 1108
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 1109
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v4, :cond_2

    .line 1110
    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 1112
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1113
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    .line 1117
    :cond_1
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1014
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1015
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1016
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setter not found, class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/16 v1, 0x3a

    .line 1019
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const/4 v0, 0x0

    .line 1021
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1023
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1024
    invoke-interface {v0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 1029
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1030
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1032
    :goto_1
    instance-of v1, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v1, :cond_3

    .line 1033
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1034
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1038
    :cond_3
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 1040
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1041
    invoke-interface {v1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-void
.end method
