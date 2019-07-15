.class public Lcom/alibaba/fastjson/serializer/LocaleCodec;
.super Ljava/lang/Object;
.source "LocaleCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/LocaleCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/LocaleCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/LocaleCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/LocaleCodec;->instance:Lcom/alibaba/fastjson/serializer/LocaleCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 43
    :goto_0
    return-object v2

    .line 33
    :cond_0
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "items":[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v4, :cond_1

    .line 36
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    array-length v2, v0

    if-ne v2, v5, :cond_2

    .line 40
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 47
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
    .line 16
    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 23
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 21
    check-cast v0, Ljava/util/Locale;

    .line 22
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
