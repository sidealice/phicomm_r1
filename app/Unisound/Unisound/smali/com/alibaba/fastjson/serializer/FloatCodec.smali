.class public Lcom/alibaba/fastjson/serializer/FloatCodec;
.super Ljava/lang/Object;
.source "FloatCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/FloatCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/FloatCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 6
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 73
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "val":Ljava/lang/String;
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 91
    .end local v1    # "val":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 79
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 80
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->floatValue()F

    move-result v1

    .line 81
    .local v1, "val":F
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    .line 85
    .end local v1    # "val":F
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    .line 87
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 88
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 67
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/FloatCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
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
    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v2

    .line 37
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_2

    .line 38
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 63
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 46
    :cond_2
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 48
    .local v1, "floatValue":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 53
    :cond_4
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "floatText":Ljava/lang/String;
    const-string v3, ".0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_5
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method
