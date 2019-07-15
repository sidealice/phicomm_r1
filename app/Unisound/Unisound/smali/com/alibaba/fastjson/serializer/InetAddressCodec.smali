.class public Lcom/alibaba/fastjson/serializer/InetAddressCodec;
.super Ljava/lang/Object;
.source "InetAddressCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/InetAddressCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/InetAddressCodec;->instance:Lcom/alibaba/fastjson/serializer/InetAddressCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v2

    .line 37
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "deserialize error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 49
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
    .line 18
    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 26
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 23
    check-cast v0, Ljava/net/InetAddress;

    .line 25
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
