.class public Lcom/alibaba/fastjson/serializer/CharacterCodec;
.super Ljava/lang/Object;
.source "CharacterCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CharacterCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x4

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
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v2, p2

    .line 36
    check-cast v2, Ljava/lang/Character;

    .line 37
    .local v2, "value":Ljava/lang/Character;
    if-nez v2, :cond_0

    .line 38
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 43
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 44
    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
