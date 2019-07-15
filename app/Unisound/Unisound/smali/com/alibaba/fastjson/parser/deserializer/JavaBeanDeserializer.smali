.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final feildDeserializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedFieldDeserializers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 5
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 44
    invoke-static {p2, p3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    .line 46
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 47
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_0

    .line 50
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getSortedFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 51
    .restart local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 52
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    return-void
.end method

.method private addFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "interName":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 64
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 73
    instance-of v9, p2, Ljava/lang/Class;

    if-eqz v9, :cond_0

    .line 74
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v0, p2

    .line 75
    check-cast v0, Ljava/lang/Class;

    .line 76
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 77
    .local v5, "loader":Ljava/lang/ClassLoader;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 78
    .local v6, "obj":Lcom/alibaba/fastjson/JSONObject;
    new-array v9, v11, [Ljava/lang/Class;

    aput-object v0, v9, v10

    invoke-static {v5, v9, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v8

    .line 111
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    .end local v6    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-object v8

    .line 83
    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v9

    if-nez v9, :cond_1

    .line 84
    const/4 v8, 0x0

    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 90
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 91
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 99
    .local v7, "object":Ljava/lang/Object;
    :goto_1
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 100
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 101
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    if-ne v9, v10, :cond_2

    .line 103
    :try_start_1
    const-string v9, ""

    invoke-virtual {v3, v7, v9}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create instance error, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "object":Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x1

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .restart local v7    # "object":Ljava/lang/Object;
    goto :goto_1

    .line 95
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create instance error, class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "object":Ljava/lang/Object;
    :cond_4
    move-object v8, v7

    .line 111
    goto/16 :goto_0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
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

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
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

    .prologue
    .line 168
    const-class v3, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_0

    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 169
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 373
    :goto_0
    return-object v3

    .line 172
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v18

    .line 174
    .local v18, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 175
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 176
    const/4 v3, 0x0

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    .line 180
    .local v11, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz p4, :cond_3

    if-eqz v11, :cond_3

    .line 181
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    .line 183
    :cond_3
    const/4 v10, 0x0

    .line 186
    .local v10, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v8, 0x0

    .line 188
    .local v8, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_6

    .line 189
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 190
    if-nez p4, :cond_4

    .line 191
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 370
    :cond_4
    if-eqz v10, :cond_5

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v3, p4

    goto :goto_0

    .line 196
    :cond_6
    :try_start_1
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->isSupportArrayToBean(Lcom/alibaba/fastjson/parser/JSONLexer;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 197
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 370
    if-eqz v10, :cond_7

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_0

    .line 200
    :cond_8
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_b

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_b

    .line 201
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "syntax error, expect {, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", pos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 207
    .local v9, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 208
    const-string v3, ", fieldName "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 212
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .end local v9    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v10, :cond_a

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v3

    .line 215
    :cond_b
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 216
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    move-object/from16 v16, v8

    .line 221
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v16, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    :goto_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "key":Ljava/lang/String;
    if-nez v5, :cond_11

    .line 224
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_10

    .line 225
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v8, v16

    .line 334
    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3
    if-nez p4, :cond_27

    .line 335
    if-nez v8, :cond_25

    .line 336
    :try_start_5
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 337
    if-nez v10, :cond_e

    .line 338
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    .line 370
    :cond_e
    if-eqz v10, :cond_f

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 228
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_10
    :try_start_6
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_11

    .line 229
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 235
    :cond_11
    const-string v3, "$ref"

    if-ne v3, v5, :cond_1b

    .line 236
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 237
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_18

    .line 238
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v22

    .line 239
    .local v22, "ref":Ljava/lang/String;
    const-string v3, "@"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 240
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object p4

    .line 269
    :goto_4
    const/16 v3, 0xd

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 270
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_19

    .line 271
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal ref"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    .end local v5    # "key":Ljava/lang/String;
    .end local v22    # "ref":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v8, v16

    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_1

    .line 241
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "ref":Ljava/lang/String;
    :cond_12
    const-string v3, ".."

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 242
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v21

    .line 243
    .local v21, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 244
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object p4

    goto :goto_4

    .line 246
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 247
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_4

    .line 249
    .end local v21    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_14
    const-string v3, "$"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 250
    move-object/from16 v23, v11

    .line 251
    .local v23, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 252
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v23

    goto :goto_5

    .line 255
    :cond_15
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 256
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object p4

    goto :goto_4

    .line 258
    :cond_16
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 259
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_4

    .line 262
    .end local v23    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_17
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v22

    invoke-direct {v3, v11, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 263
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto/16 :goto_4

    .line 266
    .end local v22    # "ref":Ljava/lang/String;
    :cond_18
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal ref, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    .restart local v22    # "ref":Ljava/lang/String;
    :cond_19
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 275
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 370
    if-eqz v10, :cond_1a

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 280
    .end local v22    # "ref":Ljava/lang/String;
    :cond_1b
    :try_start_7
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v3, v5, :cond_1f

    .line 281
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 282
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1e

    .line 283
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v25

    .line 284
    .local v25, "typeName":Ljava/lang/String;
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 286
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 287
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_d

    .line 288
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v8, v16

    .line 289
    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 294
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1c
    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    .line 295
    .local v26, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    .line 296
    .local v12, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v12, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 370
    if-eqz v10, :cond_1d

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 298
    .end local v12    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v25    # "typeName":Ljava/lang/String;
    .end local v26    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1e
    :try_start_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_1f
    if-nez p4, :cond_2b

    if-nez v16, :cond_2b

    .line 303
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 304
    if-nez p4, :cond_2a

    .line 305
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 307
    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    :try_start_9
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v11, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v10

    :goto_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p2

    .line 310
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v19

    .line 311
    .local v19, "match":Z
    if-nez v19, :cond_20

    .line 312
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_c

    .line 313
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_3

    .line 320
    :cond_20
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_21

    move-object/from16 v16, v8

    .line 321
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 324
    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_21
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    .line 325
    const/16 v3, 0x10

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 329
    :cond_22
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_23

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 330
    :cond_23
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, unexpect token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    move-object/from16 v16, v8

    .line 332
    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 343
    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "match":Z
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v15

    .line 344
    .local v15, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    .line 345
    .local v24, "size":I
    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 346
    .local v20, "params":[Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    .line 347
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 348
    .local v14, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v14}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v20, v17

    .line 346
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 351
    .end local v14    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_29

    .line 353
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object p4

    .line 370
    .end local v15    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "i":I
    .end local v20    # "params":[Ljava/lang/Object;
    .end local v24    # "size":I
    :cond_27
    :goto_9
    if-eqz v10, :cond_28

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/ParseContext;->setObject(Ljava/lang/Object;)V

    .line 373
    :cond_28
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 354
    .restart local v15    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v17    # "i":I
    .restart local v20    # "params":[Ljava/lang/Object;
    .restart local v24    # "size":I
    :catch_0
    move-exception v13

    .line 355
    .local v13, "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instance error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 358
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_27

    .line 360
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object p4

    goto :goto_9

    .line 361
    :catch_1
    move-exception v13

    .line 362
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_d
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create factory method error, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "i":I
    .end local v20    # "params":[Ljava/lang/Object;
    .end local v24    # "size":I
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2a
    move-object/from16 v8, v16

    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .end local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2b
    move-object/from16 v8, v16

    .end local v16    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_7
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
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

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 121
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xe

    if-eq v9, v10, :cond_0

    .line 122
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 127
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 128
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_9

    .line 129
    add-int/lit8 v9, v5, -0x1

    if-ne v2, v9, :cond_2

    const/16 v4, 0x5d

    .line 130
    .local v4, "seperator":C
    :goto_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 131
    .local v1, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v9, :cond_3

    .line 133
    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v6

    .line 134
    .local v6, "value":I
    invoke-virtual {v1, p4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    .line 128
    .end local v6    # "value":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "seperator":C
    :cond_2
    const/16 v4, 0x2c

    goto :goto_1

    .line 135
    .restart local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v4    # "seperator":C
    :cond_3
    const-class v9, Ljava/lang/String;

    if-ne v0, v9, :cond_4

    .line 136
    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v1, p4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v9, :cond_5

    .line 139
    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v6

    .line 140
    .local v6, "value":J
    invoke-virtual {v1, p4, v6, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_2

    .line 141
    .end local v6    # "value":J
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v9

    invoke-interface {v3, v0, v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v8

    .line 143
    .local v8, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1, p4, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 145
    .end local v8    # "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_6
    const/16 v9, 0xe

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 146
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 147
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v1, p4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    const/16 v9, 0x5d

    if-ne v4, v9, :cond_8

    .line 150
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0xf

    if-eq v9, v10, :cond_7

    .line 151
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 153
    :cond_7
    const/16 v9, 0x10

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 154
    :cond_8
    const/16 v9, 0x2c

    if-ne v4, v9, :cond_1

    .line 155
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x10

    if-eq v9, v10, :cond_1

    .line 156
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "syntax error"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 161
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "seperator":C
    .end local v6    # "value":Ljava/lang/Object;
    :cond_9
    const/16 v9, 0x10

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 163
    return-object p4
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 424
    const/16 v0, 0xc

    return v0
.end method

.method public getFieldDeserializerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    return-object v0
.end method

.method public final isSupportArrayToBean(Lcom/alibaba/fastjson/parser/JSONLexer;)Z
    .locals 2
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getParserFeatures()I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 407
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setter not found, class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 411
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 412
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/FilterUtils;->getExtratype(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 414
    .local v1, "type":Ljava/lang/reflect/Type;
    if-nez v1, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 420
    .local v2, "value":Ljava/lang/Object;
    :goto_0
    invoke-static {p1, p2, p3, v2}, Lcom/alibaba/fastjson/serializer/FilterUtils;->processExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    return-void

    .line 417
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 5
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 381
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 383
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v1, :cond_1

    .line 384
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->feildDeserializerMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 392
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    if-nez v1, :cond_2

    .line 393
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    const/4 v4, 0x0

    .line 402
    :goto_0
    return v4

    .line 398
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 400
    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 402
    const/4 v4, 0x1

    goto :goto_0
.end method
