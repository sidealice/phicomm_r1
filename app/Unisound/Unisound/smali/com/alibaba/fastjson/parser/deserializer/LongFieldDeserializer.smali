.class public Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "LongFieldDeserializer.java"


# instance fields
.field private final fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 20
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 21
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v0

    return v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 8
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
    const/16 v7, 0x10

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 28
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 29
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 30
    .local v2, "val":J
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 31
    if-nez p2, :cond_1

    .line 32
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v2    # "val":J
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v2    # "val":J
    :cond_1
    invoke-virtual {p0, p2, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_0

    .line 37
    .end local v2    # "val":J
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "value":Ljava/lang/Long;
    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 47
    :goto_1
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->getFieldClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_0

    .line 52
    :cond_3
    if-nez p2, :cond_5

    .line 53
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v4    # "value":Ljava/lang/Long;
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "obj":Ljava/lang/Object;
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Long;
    goto :goto_1

    .line 55
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/LongFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
