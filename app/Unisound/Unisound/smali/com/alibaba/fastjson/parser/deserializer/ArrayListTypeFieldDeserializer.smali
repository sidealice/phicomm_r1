.class public Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ArrayListTypeFieldDeserializer.java"


# instance fields
.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private itemFastMatchToken:I

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
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
    .line 26
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 29
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xe

    return v0
.end method

.method public final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 16
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 66
    .local v5, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 68
    .local v6, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v14, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    instance-of v14, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_2

    move-object v12, v5

    .line 70
    check-cast v12, Ljava/lang/reflect/TypeVariable;

    .local v12, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v10, p2

    .line 71
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 73
    .local v10, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v8, 0x0

    .line 74
    .local v8, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Class;

    if-eqz v14, :cond_0

    .line 75
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v8, Ljava/lang/Class;

    .line 78
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v9, -0x1

    .line 79
    .local v9, "paramIndex":I
    if-eqz v8, :cond_1

    .line 80
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v11, v14

    .local v11, "size":I
    :goto_0
    if-ge v3, v11, :cond_1

    .line 81
    invoke-virtual {v8}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    aget-object v4, v14, v3

    .line 82
    .local v4, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 83
    move v9, v3

    .line 89
    .end local v3    # "i":I
    .end local v4    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v11    # "size":I
    :cond_1
    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    .line 90
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v14

    aget-object v5, v14, v9

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 97
    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "paramIndex":I
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v12    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v7

    .line 99
    .local v7, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    const/16 v15, 0xe

    if-eq v14, v15, :cond_5

    .line 100
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exepct \'[\', but "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 102
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", type : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_3
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v14, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 80
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v7    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v3    # "i":I
    .restart local v4    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "paramIndex":I
    .restart local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v11    # "size":I
    .restart local v12    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    .end local v4    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v8    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "paramIndex":I
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "size":I
    .end local v12    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v7    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_5
    if-nez v6, :cond_6

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .end local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 109
    .restart local v6    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 114
    const/4 v3, 0x0

    .line 115
    .restart local v3    # "i":I
    :goto_1
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 116
    :goto_2
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_7

    .line 117
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 122
    :cond_7
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    const/16 v15, 0xf

    if-ne v14, v15, :cond_8

    .line 137
    const/16 v14, 0x10

    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 138
    return-void

    .line 126
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v5, v14}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 127
    .local v13, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 131
    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    const/16 v15, 0x10

    if-ne v14, v15, :cond_9

    .line 132
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->itemFastMatchToken:I

    invoke-interface {v7, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 114
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "list":Ljava/util/ArrayList;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 52
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 53
    invoke-virtual {p0, p1, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 56
    if-nez p2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
