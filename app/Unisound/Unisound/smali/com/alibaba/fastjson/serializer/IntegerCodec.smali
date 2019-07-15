.class public Lcom/alibaba/fastjson/serializer/IntegerCodec;
.super Ljava/lang/Object;
.source "IntegerCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/IntegerCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    const/16 v7, 0x10

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 65
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 66
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 67
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 72
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 73
    .local v3, "val":I
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 75
    .local v1, "intObj":Ljava/lang/Integer;
    goto :goto_0

    .end local v1    # "intObj":Ljava/lang/Integer;
    .end local v3    # "val":I
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 76
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    .line 77
    .local v0, "decimalValue":Ljava/math/BigDecimal;
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 78
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 79
    .restart local v1    # "intObj":Ljava/lang/Integer;
    goto :goto_0

    .line 80
    .end local v0    # "decimalValue":Ljava/math/BigDecimal;
    .end local v1    # "intObj":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 82
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "intObj":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
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
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v2, p2

    .line 38
    check-cast v2, Ljava/lang/Number;

    .line 40
    .local v2, "value":Ljava/lang/Number;
    if-nez v2, :cond_2

    .line 41
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 51
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Byte;

    if-ne v0, v3, :cond_3

    .line 54
    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 55
    :cond_3
    const-class v3, Ljava/lang/Short;

    if-ne v0, v3, :cond_0

    .line 56
    const/16 v3, 0x53

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method
