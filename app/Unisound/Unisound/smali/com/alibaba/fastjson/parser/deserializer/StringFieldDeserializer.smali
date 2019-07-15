.class public Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "StringFieldDeserializer.java"


# instance fields
.field private final fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 1
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
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
    .line 17
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 19
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 20
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v0

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
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
    .line 26
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 27
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "value":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 41
    :goto_0
    if-nez p2, :cond_2

    .line 42
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_1
    return-void

    .line 32
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 35
    const/4 v2, 0x0

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 44
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/StringFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
