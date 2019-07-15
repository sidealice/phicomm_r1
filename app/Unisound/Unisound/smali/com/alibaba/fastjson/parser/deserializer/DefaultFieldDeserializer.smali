.class public Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "DefaultFieldDeserializer.java"


# instance fields
.field private fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


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
    .line 19
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6
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
    .line 24
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 28
    :cond_0
    instance-of v3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 30
    .local v0, "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/parser/ParseContext;->setType(Ljava/lang/reflect/Type;)V

    .line 33
    .end local v0    # "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 36
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 38
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 46
    .end local v1    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :goto_0
    return-void

    .line 40
    :cond_2
    if-nez p2, :cond_3

    .line 41
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
