.class public Lcom/alibaba/fastjson/serializer/UUIDCodec;
.super Ljava/lang/Object;
.source "UUIDCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/UUIDCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/fastjson/serializer/UUIDCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/UUIDCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/UUIDCodec;->instance:Lcom/alibaba/fastjson/serializer/UUIDCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
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
    .line 31
    if-nez p2, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 38
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 36
    check-cast v0, Ljava/util/UUID;

    .line 37
    .local v0, "uid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
