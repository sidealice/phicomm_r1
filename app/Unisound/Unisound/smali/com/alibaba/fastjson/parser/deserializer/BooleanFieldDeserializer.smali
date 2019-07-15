.class public Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "BooleanFieldDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
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
    .line 16
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x6

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 9
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
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/16 v8, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    .line 24
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 25
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 35
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 36
    .local v3, "val":I
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 37
    if-ne v3, v0, :cond_3

    .line 38
    .local v0, "booleanValue":Z
    :goto_1
    if-nez p2, :cond_4

    .line 39
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "booleanValue":Z
    :cond_3
    move v0, v5

    .line 37
    goto :goto_1

    .line 41
    .restart local v0    # "booleanValue":Z
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 46
    .end local v0    # "booleanValue":Z
    .end local v3    # "val":I
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 47
    const/4 v4, 0x0

    .line 48
    .local v4, "value":Ljava/lang/Boolean;
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_6
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_8

    .line 62
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 63
    if-nez p2, :cond_7

    .line 64
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    :cond_7
    invoke-virtual {p0, p2, v5}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 71
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "obj":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    .line 75
    .restart local v4    # "value":Ljava/lang/Boolean;
    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    .line 80
    :cond_9
    if-nez p2, :cond_a

    .line 81
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_a
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/BooleanFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
