.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;
.super Ljava/lang/Object;
.source "ArrayDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p3, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 77
    const/4 v3, 0x0

    .line 128
    :goto_0
    return-object v3

    .line 80
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 82
    .local v4, "size":I
    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, "objArray":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 84
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .local v5, "value":Ljava/lang/Object;
    if-ne v5, p3, :cond_1

    .line 87
    invoke-static {v3, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 83
    .end local v5    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 94
    move-object v1, v5

    .line 99
    .end local v5    # "value":Ljava/lang/Object;
    .local v1, "element":Ljava/lang/Object;
    :goto_3
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 96
    .end local v1    # "element":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    check-cast v5, Lcom/alibaba/fastjson/JSONArray;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "element":Ljava/lang/Object;
    goto :goto_3

    .line 101
    .end local v1    # "element":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "element":Ljava/lang/Object;
    instance-of v10, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v10, :cond_6

    .line 103
    const/4 v0, 0x0

    .local v0, "contains":Z
    move-object v6, v5

    .line 104
    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 105
    .local v6, "valueArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    .line 106
    .local v7, "valueArraySize":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_4
    if-ge v9, v7, :cond_5

    .line 107
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 108
    .local v8, "valueItem":Ljava/lang/Object;
    if-ne v8, p3, :cond_4

    .line 109
    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v0, 0x1

    .line 106
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 113
    .end local v8    # "valueItem":Ljava/lang/Object;
    :cond_5
    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 118
    .end local v0    # "contains":Z
    .end local v1    # "element":Ljava/lang/Object;
    .end local v6    # "valueArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "valueArraySize":I
    .end local v9    # "y":I
    :cond_6
    if-nez v1, :cond_7

    .line 119
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v10

    invoke-static {v5, p2, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    :cond_7
    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 126
    .end local v5    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v9

    .line 22
    .local v9, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 23
    const/16 v15, 0x10

    invoke-interface {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 24
    const/4 v4, 0x0

    .line 71
    :goto_0
    return-object v4

    .line 27
    :cond_0
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 28
    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v4

    .line 29
    .local v4, "bytes":[B
    const/16 v15, 0x10

    invoke-interface {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 35
    .end local v4    # "bytes":[B
    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v15, :cond_7

    move-object/from16 v5, p2

    .line 36
    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    .line 37
    .local v5, "clazz":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v5}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 38
    .local v7, "componentType":Ljava/lang/reflect/Type;
    instance-of v15, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_6

    move-object v14, v7

    .line 39
    check-cast v14, Ljava/lang/reflect/TypeVariable;

    .line 40
    .local v14, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/ParseContext;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 41
    .local v12, "objType":Ljava/lang/reflect/Type;
    instance-of v15, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_5

    move-object v10, v12

    .line 42
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 43
    .local v10, "objParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 44
    .local v11, "objRawType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 45
    .local v2, "actualType":Ljava/lang/reflect/Type;
    instance-of v15, v11, Ljava/lang/Class;

    if-eqz v15, :cond_3

    .line 46
    check-cast v11, Ljava/lang/Class;

    .end local v11    # "objRawType":Ljava/lang/reflect/Type;
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    .line 47
    .local v13, "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v15, v13

    if-ge v8, v15, :cond_3

    .line 48
    aget-object v15, v13, v8

    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 49
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    aget-object v2, v15, v8

    .line 47
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 53
    .end local v8    # "i":I
    .end local v13    # "objTypeParams":[Ljava/lang/reflect/TypeVariable;
    :cond_3
    instance-of v15, v2, Ljava/lang/Class;

    if-eqz v15, :cond_4

    move-object v6, v2

    .line 54
    check-cast v6, Ljava/lang/Class;

    .line 68
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .end local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v12    # "objType":Ljava/lang/reflect/Type;
    .end local v14    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .local v6, "componentClass":Ljava/lang/Class;
    :goto_2
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 69
    .local v3, "array":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v3, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayDeserializer;->toObjectArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 56
    .end local v3    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .restart local v2    # "actualType":Ljava/lang/reflect/Type;
    .restart local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .restart local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    .restart local v12    # "objType":Ljava/lang/reflect/Type;
    .restart local v14    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    const-class v6, Ljava/lang/Object;

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .line 59
    .end local v2    # "actualType":Ljava/lang/reflect/Type;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v10    # "objParamType":Ljava/lang/reflect/ParameterizedType;
    :cond_5
    const-class v6, Ljava/lang/Object;

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v12    # "objType":Ljava/lang/reflect/Type;
    .end local v14    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_6
    move-object v6, v7

    .line 62
    check-cast v6, Ljava/lang/Class;

    .restart local v6    # "componentClass":Ljava/lang/Class;
    goto :goto_2

    .end local v5    # "clazz":Ljava/lang/reflect/GenericArrayType;
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v7    # "componentType":Ljava/lang/reflect/Type;
    :cond_7
    move-object/from16 v5, p2

    .line 65
    check-cast v5, Ljava/lang/Class;

    .line 66
    .local v5, "clazz":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .restart local v6    # "componentClass":Ljava/lang/Class;
    move-object v7, v6

    .restart local v7    # "componentType":Ljava/lang/reflect/Type;
    goto :goto_2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0xe

    return v0
.end method
