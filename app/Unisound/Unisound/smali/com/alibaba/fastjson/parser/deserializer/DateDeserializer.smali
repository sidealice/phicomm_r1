.class public Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/DateDeserializer;

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
    const/4 v0, 0x0

    .line 20
    if-nez p4, :cond_1

    move-object p4, v0

    .line 57
    .end local p4    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p4

    .line 24
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v6, p4, Ljava/util/Date;

    if-nez v6, :cond_0

    .line 26
    instance-of v6, p4, Ljava/lang/Number;

    if-eqz v6, :cond_2

    .line 27
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    .line 28
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v6, p4, Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v3, p4

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    move-object p4, v0

    .line 31
    goto :goto_0

    .line 34
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    .local v0, "calendar":Ljava/util/Calendar;
    const-class v6, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v6, :cond_4

    .line 46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    move-object p4, v0

    goto :goto_0

    .line 43
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p4

    .line 46
    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 51
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p4

    goto :goto_0

    .line 46
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v6

    .line 52
    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v6

    .line 56
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 57
    .local v4, "longVal":J
    new-instance p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-direct {p4, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 60
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v4    # "longVal":J
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_6
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "parse error"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method
