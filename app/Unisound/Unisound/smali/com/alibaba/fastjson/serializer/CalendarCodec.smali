.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Ljava/lang/Object;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

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
    .line 25
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Calendar;

    if-eqz v3, :cond_0

    .line 39
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    move-object v1, v2

    .line 31
    check-cast v1, Ljava/util/Date;

    .line 32
    .local v1, "date":Ljava/util/Date;
    if-nez v1, :cond_1

    .line 33
    const/4 v2, 0x0

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v2, v0

    .line 39
    goto :goto_0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

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
    move-object v0, p2

    check-cast v0, Ljava/util/Calendar;

    .line 19
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 20
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
