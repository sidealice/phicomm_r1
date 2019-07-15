.class public Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;
.super Ljava/lang/Object;
.source "TimeDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

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
    .locals 12
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
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    .line 19
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    .line 20
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 22
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 23
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 26
    :cond_0
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 28
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 29
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 32
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v6

    .line 33
    .local v6, "time":J
    const/16 v8, 0xd

    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 34
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_2

    .line 35
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 37
    :cond_2
    const/16 v8, 0x10

    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 39
    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v6, v7}, Ljava/sql/Time;-><init>(J)V

    .line 66
    .end local v6    # "time":J
    :cond_3
    :goto_0
    return-object v5

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 44
    .local v5, "val":Ljava/lang/Object;
    if-nez v5, :cond_5

    .line 45
    const/4 v5, 0x0

    goto :goto_0

    .line 48
    :cond_5
    instance-of v8, v5, Ljava/sql/Time;

    if-nez v8, :cond_3

    .line 50
    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_6

    .line 51
    new-instance v8, Ljava/sql/Time;

    check-cast v5, Ljava/lang/Number;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/sql/Time;-><init>(J)V

    move-object v5, v8

    goto :goto_0

    .line 52
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_6
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_9

    move-object v4, v5

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 55
    const/4 v5, 0x0

    goto :goto_0

    .line 59
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 65
    .local v2, "longVal":J
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 66
    new-instance v5, Ljava/sql/Time;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-direct {v5, v2, v3}, Ljava/sql/Time;-><init>(J)V

    goto :goto_0

    .line 63
    .end local v2    # "longVal":J
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .restart local v2    # "longVal":J
    goto :goto_1

    .line 69
    .end local v0    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "longVal":J
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "parse error"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    return v0
.end method
