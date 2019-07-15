.class public Lcom/alibaba/fastjson/serializer/BooleanCodec;
.super Ljava/lang/Object;
.source "BooleanCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BooleanCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    const/16 v6, 0x10

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 59
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 60
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 63
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 65
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 66
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 67
    .local v1, "intValue":I
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 69
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 70
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 72
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 75
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    .end local v1    # "intValue":I
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 77
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_4
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x6

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
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

    move-result-object v0

    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v1, p2

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 38
    .local v1, "value":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 39
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "false"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "true"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v2, "false"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
