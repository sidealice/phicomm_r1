.class public final Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ListResolveFieldDeserializer.java"


# instance fields
.field private final index:I

.field private final list:Ljava/util/List;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "list"    # Ljava/util/List;
    .param p3, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 22
    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    .line 23
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
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
    .line 52
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 28
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-interface {v4, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v4, v4, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v4, :cond_0

    .line 31
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->list:Ljava/util/List;

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    .line 32
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "array":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 35
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 37
    .local v1, "arrayLength":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    if-le v1, v4, :cond_0

    .line 39
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "item":Ljava/lang/Object;
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;->index:I

    invoke-static {v0, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 48
    .end local v0    # "array":Ljava/lang/Object;
    .end local v1    # "arrayLength":I
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    return-void

    .line 42
    .restart local v0    # "array":Ljava/lang/Object;
    .restart local v1    # "arrayLength":I
    .restart local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    move-object v2, p2

    .restart local v2    # "item":Ljava/lang/Object;
    goto :goto_0
.end method
