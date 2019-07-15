.class public Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "TimestampDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimestampDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    const/4 v5, 0x0

    .line 20
    if-nez p4, :cond_1

    .line 47
    .end local p4    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 24
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v6, p4, Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 25
    new-instance v5, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 28
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v6, p4, Ljava/lang/Number;

    if-eqz v6, :cond_3

    .line 29
    new-instance v5, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 32
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v6, p4, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v4, p4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 34
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 40
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 41
    .local v0, "date":Ljava/util/Date;
    new-instance v5, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 46
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    .local v2, "longVal":J
    new-instance v5, Ljava/sql/Timestamp;

    invoke-direct {v5, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    .line 50
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "longVal":J
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "parse error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method
