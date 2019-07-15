.class public Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateFormatDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateFormatDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 17
    if-nez p4, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-object v1

    .line 21
    :cond_1
    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, p4

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "parse error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    return v0
.end method
