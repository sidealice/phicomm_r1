.class public Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "SqlDateDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

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
    .locals 11
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
    const/4 v3, 0x0

    .line 19
    if-nez p4, :cond_1

    .line 60
    .end local p4    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 23
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v8, p4, Ljava/util/Date;

    if-eqz v8, :cond_2

    .line 24
    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    .local v7, "val":Ljava/sql/Date;
    move-object p4, v7

    .end local v7    # "val":Ljava/sql/Date;
    .local p4, "val":Ljava/sql/Date;
    :goto_1
    move-object v3, p4

    .line 60
    goto :goto_0

    .line 25
    .local p4, "val":Ljava/lang/Object;
    :cond_2
    instance-of v8, p4, Ljava/lang/Number;

    if-eqz v8, :cond_3

    .line 26
    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    .restart local v7    # "val":Ljava/sql/Date;
    move-object p4, v7

    .end local v7    # "val":Ljava/sql/Date;
    .local p4, "val":Ljava/sql/Date;
    goto :goto_1

    .line 27
    .local p4, "val":Ljava/lang/Object;
    :cond_3
    instance-of v8, p4, Ljava/lang/String;

    if-eqz v8, :cond_5

    move-object v6, p4

    .line 28
    check-cast v6, Ljava/lang/String;

    .line 29
    .local v6, "strVal":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 38
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 53
    .local v4, "longVal":J
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 55
    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    .line 41
    .end local v4    # "longVal":J
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 43
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :try_start_2
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 44
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/sql/Date;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .local v3, "sqlDate":Ljava/sql/Date;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .line 46
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "sqlDate":Ljava/sql/Date;
    :catch_0
    move-exception v8

    .line 50
    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    .restart local v4    # "longVal":J
    goto :goto_2

    .line 53
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v4    # "longVal":J
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v8

    .line 57
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    return v0
.end method
