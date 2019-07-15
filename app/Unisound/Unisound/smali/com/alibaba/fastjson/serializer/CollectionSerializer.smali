.class public Lcom/alibaba/fastjson/serializer/CollectionSerializer;
.super Ljava/lang/Object;
.source "CollectionSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CollectionSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alibaba/fastjson/serializer/CollectionSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CollectionSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CollectionSerializer;->instance:Lcom/alibaba/fastjson/serializer/CollectionSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 18
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v13

    .line 35
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 36
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 37
    const-string v15, "[]"

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 44
    :cond_1
    const/4 v7, 0x0

    .line 45
    .local v7, "elementType":Ljava/lang/reflect/Type;
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 46
    move-object/from16 v0, p4

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    move-object/from16 v14, p4

    .line 47
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 48
    .local v14, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    .end local v14    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    move-object/from16 v5, p2

    .line 52
    check-cast v5, Ljava/util/Collection;

    .line 54
    .local v5, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v6

    .line 55
    .local v6, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 58
    const-class v15, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 59
    const-string v15, "Set"

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 66
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 67
    .local v8, "i":I
    const/16 v15, 0x5b

    :try_start_0
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 68
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v11

    .line 70
    .local v11, "item":Ljava/lang/Object;
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    if-eqz v9, :cond_4

    .line 71
    const/16 v15, 0x2c

    :try_start_2
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 74
    :cond_4
    if-nez v11, :cond_6

    .line 75
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v8

    .line 76
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 60
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Ljava/lang/Object;
    :cond_5
    const-class v15, Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 61
    const-string v15, "TreeSet"

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    .line 79
    .restart local v8    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_6
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 81
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/lang/Integer;

    if-ne v4, v15, :cond_7

    .line 82
    check-cast v11, Ljava/lang/Integer;

    .end local v11    # "item":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    move v9, v8

    .line 83
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 86
    .end local v9    # "i":I
    .restart local v8    # "i":I
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_7
    const-class v15, Ljava/lang/Long;

    if-ne v4, v15, :cond_8

    .line 87
    check-cast v11, Ljava/lang/Long;

    .end local v11    # "item":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 89
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 90
    const/16 v15, 0x4c

    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 95
    .end local v9    # "i":I
    .restart local v8    # "i":I
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v12

    .line 96
    .local v12, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v15, v8, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v11, v15, v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v8

    .line 97
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_2

    .line 98
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "item":Ljava/lang/Object;
    .end local v12    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_9
    const/16 v15, 0x5d

    :try_start_4
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0

    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v8    # "i":I
    :catchall_0
    move-exception v15

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v15

    .end local v8    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v15

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_3

    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2
.end method
