.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v5, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 65
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSerializeFeatures(Ljava/lang/Class;)I

    move-result v4

    iput v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-static {p1, p2, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 72
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v2    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    const/4 v4, 0x1

    invoke-static {p1, p2, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 82
    .restart local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 87
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 58
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public createFieldSerializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Number;

    if-ne v0, v1, :cond_0

    .line 260
    new-instance v1, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 263
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0
.end method

.method public getGetters()[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    return-object v0
.end method

.method public isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .prologue
    .line 267
    iget v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 272
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const/4 v0, 0x1

    .local v0, "writeAsArray":Z
    goto :goto_0

    .line 275
    .end local v0    # "writeAsArray":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "writeAsArray":Z
    goto :goto_0
.end method

.method protected isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 28
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
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v18

    .line 96
    .local v18, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 97
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 107
    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 113
    .local v12, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v19

    .line 114
    .local v19, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 116
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z

    move-result v23

    .line 119
    .local v23, "writeAsArray":Z
    if-eqz v23, :cond_6

    const/16 v22, 0x5b

    .line 120
    .local v22, "startSeperator":C
    :goto_2
    if-eqz v23, :cond_7

    const/16 v8, 0x5d

    .line 121
    .local v8, "endSeperator":C
    :goto_3
    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 123
    array-length v0, v12

    move/from16 v24, v0

    if-lez v24, :cond_2

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 128
    :cond_2
    const/4 v6, 0x0

    .line 130
    .local v6, "commaFlag":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 131
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 132
    .local v16, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_3

    .line 133
    sget-object v24, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 135
    const/4 v6, 0x1

    .line 139
    .end local v16    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    if-eqz v6, :cond_8

    const/16 v21, 0x2c

    .line 141
    .local v21, "seperator":C
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v15

    .line 142
    .local v15, "newSeperator":C
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v15, v0, :cond_9

    const/4 v6, 0x1

    .line 144
    :goto_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    array-length v0, v12

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_19

    .line 145
    aget-object v11, v12, v13

    .line 147
    .local v11, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 148
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getField()Ljava/lang/reflect/Field;

    move-result-object v9

    .line 149
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_a

    .line 150
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Modifier;->isTransient(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    if-eqz v24, :cond_a

    .line 144
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :cond_4
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 110
    .end local v6    # "commaFlag":Z
    .end local v8    # "endSeperator":C
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v12    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v13    # "i":I
    .end local v15    # "newSeperator":C
    .end local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v21    # "seperator":C
    .end local v22    # "startSeperator":C
    .end local v23    # "writeAsArray":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .restart local v12    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_1

    .line 119
    .restart local v19    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v23    # "writeAsArray":Z
    :cond_6
    const/16 v22, 0x7b

    goto/16 :goto_2

    .line 120
    .restart local v22    # "startSeperator":C
    :cond_7
    const/16 v8, 0x7d

    goto/16 :goto_3

    .line 139
    .restart local v6    # "commaFlag":Z
    .restart local v8    # "endSeperator":C
    :cond_8
    const/16 v21, 0x0

    goto :goto_4

    .line 142
    .restart local v15    # "newSeperator":C
    .restart local v21    # "seperator":C
    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    .line 156
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v13    # "i":I
    :cond_a
    :try_start_1
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 162
    .local v20, "propertyValue":Ljava/lang/Object;
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 166
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v17, v20

    .line 169
    .local v17, "originalValue":Ljava/lang/Object;
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 171
    if-nez v20, :cond_b

    if-nez v23, :cond_b

    .line 172
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->isWriteNull()Z

    move-result v24

    if-nez v24, :cond_b

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 178
    :cond_b
    if-eqz v20, :cond_12

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 179
    iget-object v0, v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v10

    .line 180
    .local v10, "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v24, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_c

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Byte;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Byte;->byteValue()B

    move-result v24

    if-eqz v24, :cond_4

    .line 182
    :cond_c
    sget-object v24, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_d

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Short;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Short;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Short;->shortValue()S

    move-result v24

    if-eqz v24, :cond_4

    .line 184
    :cond_d
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_e

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-eqz v24, :cond_4

    .line 186
    :cond_e
    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_f

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_4

    .line 188
    :cond_f
    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_10

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Float;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_4

    .line 190
    :cond_10
    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_11

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_4

    .line 192
    :cond_11
    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_12

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 197
    .end local v10    # "fieldCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    if-eqz v6, :cond_13

    .line 198
    const/16 v24, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 199
    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 204
    :cond_13
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_15

    .line 205
    if-nez v23, :cond_14

    .line 206
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 208
    :cond_14
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 222
    :goto_8
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 209
    :cond_15
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 210
    if-nez v23, :cond_16

    .line 211
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 213
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 233
    .end local v6    # "commaFlag":Z
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v13    # "i":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "newSeperator":C
    .end local v17    # "originalValue":Ljava/lang/Object;
    .end local v20    # "propertyValue":Ljava/lang/Object;
    .end local v21    # "seperator":C
    :catch_0
    move-exception v7

    .line 234
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    const-string v25, "write javaBean error"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v24

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v24

    .line 215
    .restart local v6    # "commaFlag":Z
    .restart local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v13    # "i":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "newSeperator":C
    .restart local v17    # "originalValue":Ljava/lang/Object;
    .restart local v20    # "propertyValue":Ljava/lang/Object;
    .restart local v21    # "seperator":C
    :cond_17
    if-nez v23, :cond_18

    .line 216
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_8

    .line 218
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_8

    .line 225
    .end local v11    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "originalValue":Ljava/lang/Object;
    .end local v20    # "propertyValue":Ljava/lang/Object;
    :cond_19
    if-eqz v6, :cond_1b

    const/16 v24, 0x2c

    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 227
    array-length v0, v12

    move/from16 v24, v0

    if-lez v24, :cond_1a

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 232
    :cond_1a
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto/16 :goto_0

    .line 225
    :cond_1b
    const/16 v24, 0x0

    goto :goto_9
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v0

    .line 243
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v1

    .line 248
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 253
    const/4 v1, 0x1

    goto :goto_0
.end method
