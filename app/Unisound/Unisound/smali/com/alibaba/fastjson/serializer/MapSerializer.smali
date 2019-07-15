.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 24
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
    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v13

    .line 39
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 40
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 200
    :goto_0
    return-void

    :cond_0
    move-object/from16 v10, p2

    .line 44
    check-cast v10, Ljava/util/Map;

    .line 46
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 47
    instance-of v0, v10, Ljava/util/SortedMap;

    move/from16 v23, v0

    if-nez v23, :cond_1

    instance-of v0, v10, Ljava/util/LinkedHashMap;

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 49
    :try_start_0
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v10, v11

    .line 56
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v14

    .line 62
    .local v14, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    const/16 v23, 0x7b

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 68
    const/4 v15, 0x0

    .line 69
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v17, 0x0

    .line 71
    .local v17, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v7, 0x1

    .line 73
    .local v7, "first":Z
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 74
    sget-object v23, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 76
    const/4 v7, 0x0

    .line 79
    :cond_3
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 80
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    .line 82
    .local v21, "value":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 85
    .local v6, "entryKey":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFiltersDirect()Ljava/util/List;

    move-result-object v16

    .line 86
    .local v16, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_6

    .line 87
    if-eqz v6, :cond_5

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 88
    :cond_5
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 101
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFiltersDirect()Ljava/util/List;

    move-result-object v18

    .line 102
    .local v18, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    .line 103
    if-eqz v6, :cond_7

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_12

    .line 104
    :cond_7
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 117
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFiltersDirect()Ljava/util/List;

    move-result-object v12

    .line 118
    .local v12, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_a

    .line 119
    if-eqz v6, :cond_9

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 120
    :cond_9
    check-cast v6, Ljava/lang/String;

    .end local v6    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v6, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFiltersDirect()Ljava/util/List;

    move-result-object v22

    .line 130
    .local v22, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-eqz v22, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_c

    .line 131
    if-eqz v6, :cond_b

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 132
    :cond_b
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 140
    :cond_c
    :goto_4
    if-nez v21, :cond_d

    .line 141
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 146
    :cond_d
    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 147
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 149
    .local v9, "key":Ljava/lang/String;
    if-nez v7, :cond_e

    .line 150
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 153
    :cond_e
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 156
    :cond_f
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v9, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 173
    .end local v9    # "key":Ljava/lang/String;
    :goto_5
    const/4 v7, 0x0

    .line 175
    if-nez v21, :cond_1c

    .line 176
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 192
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "first":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v21    # "value":Ljava/lang/Object;
    .end local v22    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_0
    move-exception v23

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v23

    .line 91
    .restart local v5    # "entry":Ljava/util/Map$Entry;
    .restart local v6    # "entryKey":Ljava/lang/Object;
    .restart local v7    # "first":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v21    # "value":Ljava/lang/Object;
    :cond_10
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-nez v23, :cond_11

    instance-of v0, v6, Ljava/lang/Number;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 92
    :cond_11
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 93
    .local v20, "strKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_6

    goto/16 :goto_2

    .line 107
    .end local v20    # "strKey":Ljava/lang/String;
    .restart local v18    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_12
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-nez v23, :cond_13

    instance-of v0, v6, Ljava/lang/Number;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 108
    :cond_13
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 109
    .restart local v20    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    goto/16 :goto_2

    .line 121
    .end local v20    # "strKey":Ljava/lang/String;
    .restart local v12    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-nez v23, :cond_15

    instance-of v0, v6, Ljava/lang/Number;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 122
    :cond_15
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 123
    .restart local v20    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "entryKey":Ljava/lang/String;
    goto/16 :goto_3

    .line 133
    .end local v6    # "entryKey":Ljava/lang/String;
    .end local v20    # "strKey":Ljava/lang/String;
    .restart local v22    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-nez v23, :cond_17

    instance-of v0, v6, Ljava/lang/Number;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 134
    :cond_17
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 135
    .restart local v20    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_4

    .line 158
    .end local v20    # "strKey":Ljava/lang/String;
    :cond_18
    if-nez v7, :cond_19

    .line 159
    const/16 v23, 0x2c

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 162
    :cond_19
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-nez v23, :cond_1a

    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 164
    :cond_1a
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 165
    .local v19, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 170
    .end local v19    # "strEntryKey":Ljava/lang/String;
    :goto_6
    const/16 v23, 0x3a

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_5

    .line 167
    :cond_1b
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_6

    .line 180
    :cond_1c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 182
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v15, :cond_1d

    .line 183
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v6, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_2

    .line 185
    :cond_1d
    move-object v15, v4

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v17

    .line 188
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v6, v3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 192
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v16    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v18    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v21    # "value":Ljava/lang/Object;
    .end local v22    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 196
    sget-object v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v23

    if-eqz v23, :cond_1f

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v23

    if-lez v23, :cond_1f

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 199
    :cond_1f
    const/16 v23, 0x7d

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto/16 :goto_0

    .line 50
    .end local v7    # "first":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v23

    goto/16 :goto_1
.end method
