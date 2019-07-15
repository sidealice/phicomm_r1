.class public Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;
.super Ljava/lang/Object;
.source "JavaObjectDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .line 20
    instance-of v5, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_8

    .line 21
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .end local p2    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 22
    .local v2, "componentType":Ljava/lang/reflect/Type;
    instance-of v5, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 24
    .local v3, "componentVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 27
    .end local v3    # "componentVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1, v2, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 30
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_7

    move-object v1, v2

    .line 31
    check-cast v1, Ljava/lang/Class;

    .line 32
    .local v1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_1

    .line 33
    const-class v5, [Z

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .end local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 34
    .restart local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "componentType":Ljava/lang/reflect/Type;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_2

    .line 35
    const-class v5, [S

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_3

    .line 37
    const-class v5, [I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_4

    .line 39
    const-class v5, [J

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_5

    .line 41
    const-class v5, [F

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_6

    .line 43
    const-class v5, [D

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 47
    .local v0, "array":[Ljava/lang/Object;
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 50
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 55
    .end local v2    # "componentType":Ljava/lang/reflect/Type;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    :cond_8
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xc

    return v0
.end method
