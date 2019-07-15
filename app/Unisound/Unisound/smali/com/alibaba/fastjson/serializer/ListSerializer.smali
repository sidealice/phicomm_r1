.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 20
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
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    .line 35
    .local v15, "writeClassName":Z
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v13

    .line 37
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    const/4 v6, 0x0

    .line 38
    .local v6, "elementType":Ljava/lang/reflect/Type;
    if-eqz v15, :cond_0

    .line 39
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v14, p4

    .line 40
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 41
    .local v14, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v6, v18, v19

    .line 45
    .end local v14    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    if-nez p2, :cond_2

    .line 46
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 47
    const-string v18, "[]"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_2
    move-object/from16 v12, p2

    .line 54
    check-cast v12, Ljava/util/List;

    .line 56
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_3

    .line 57
    const-string v18, "[]"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v5

    .line 62
    .local v5, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    const/4 v11, 0x0

    .line 66
    .local v11, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    sget-object v18, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 67
    const/16 v18, 0x5b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 70
    const/4 v7, 0x0

    .line 71
    .local v7, "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 72
    .local v9, "item":Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 73
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 76
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 77
    if-eqz v9, :cond_6

    .line 78
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 79
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 89
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v11

    .line 82
    new-instance v10, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-direct {v10, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 83
    .local v10, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v9, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 135
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Ljava/lang/Object;
    .end local v10    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_0
    move-exception v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v18

    .line 87
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_6
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_2

    .line 92
    .end local v9    # "item":Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 94
    const/16 v18, 0x5d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0

    .line 98
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v18, 0x5b

    :try_start_2
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 99
    const/4 v7, 0x0

    .line 100
    .restart local v7    # "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 101
    .restart local v9    # "item":Ljava/lang/Object;
    if-eqz v7, :cond_9

    .line 102
    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 105
    :cond_9
    if-nez v9, :cond_a

    .line 106
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 131
    .end local v9    # "item":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 108
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 110
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_b

    .line 111
    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "item":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_4

    .line 112
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_b
    const-class v18, Ljava/lang/Long;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_d

    .line 113
    check-cast v9, Ljava/lang/Long;

    .end local v9    # "item":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 114
    .local v16, "val":J
    if-eqz v15, :cond_c

    .line 115
    const/16 v18, 0x4c

    move-wide/from16 v0, v16

    move/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLongAndChar(JC)V

    goto :goto_4

    .line 117
    :cond_c
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_4

    .line 120
    .end local v16    # "val":J
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_d
    new-instance v10, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-direct {v10, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 121
    .restart local v10    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_4

    .line 126
    :cond_e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v11

    .line 127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v9, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 133
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "item":Ljava/lang/Object;
    .end local v10    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_f
    const/16 v18, 0x5d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0
.end method
