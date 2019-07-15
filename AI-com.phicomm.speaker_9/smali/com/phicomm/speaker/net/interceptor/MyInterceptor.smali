.class public final Lcom/phicomm/speaker/net/interceptor/MyInterceptor;
.super Ljava/lang/Object;
.source "MyInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;,
        Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

.field private volatile c:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 50
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;-><init>(Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->NONE:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    iput-object v0, p0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->c:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    return-void
.end method

.method private a(Lokhttp3/Headers;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 249
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static a(Lokio/Buffer;)Z
    .locals 8

    const/4 v0, 0x0

    .line 69
    :try_start_0
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 70
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 71
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move p0, v0

    :goto_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    .line 73
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;)Lcom/phicomm/speaker/net/interceptor/MyInterceptor;
    .locals 2

    if-nez p1, :cond_0

    .line 98
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.INSECURE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 100
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->c:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 110
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->c:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    .line 111
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 112
    sget-object v5, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->NONE:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    if-ne v3, v5, :cond_0

    .line 113
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2

    .line 116
    :cond_0
    sget-object v5, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->BODY:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    .line 117
    sget-object v8, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;->HEADERS:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$Level;

    if-ne v3, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v7

    .line 120
    :goto_2
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 123
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "--> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    if-eqz v7, :cond_5

    const-string v11, " ("

    .line 130
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-byte body)"

    .line 132
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_5
    iget-object v11, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "------------\u8bf7\u6c42\u5f00\u59cb\uff0c \u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/u;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ------------"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 135
    iget-object v11, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    const-wide/16 v11, -0x1

    if-eqz v3, :cond_e

    if-eqz v7, :cond_7

    .line 141
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 142
    iget-object v9, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 144
    :cond_6
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v13

    cmp-long v9, v13, v11

    if-eqz v9, :cond_7

    .line 145
    iget-object v9, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 149
    :cond_7
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v9

    .line 150
    invoke-virtual {v9}, Lokhttp3/Headers;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_9

    .line 151
    invoke-virtual {v9, v14}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    const-string v6, "Content-Type"

    .line 153
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "Content-Length"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 154
    iget-object v6, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x20

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_e

    if-nez v7, :cond_a

    goto :goto_5

    .line 160
    :cond_a
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    .line 162
    :cond_b
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 163
    invoke-virtual {v8, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 165
    sget-object v7, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a:Ljava/nio/charset/Charset;

    .line 166
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 168
    sget-object v7, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v7}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 171
    :cond_c
    iget-object v9, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v10, ""

    invoke-interface {v9, v10}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 172
    invoke-static {v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lokio/Buffer;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 173
    iget-object v8, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    invoke-virtual {v6, v7}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 175
    :cond_d
    iget-object v6, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--> END "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (binary "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body omitted)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 180
    :cond_e
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 183
    :try_start_0
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v13, v8, v6

    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 191
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    cmp-long v10, v8, v11

    if-eqz v10, :cond_f

    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-byte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_f
    const-string v10, "unknown-length"

    .line 195
    :goto_6
    iget-object v11, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<-- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_10
    const-string v6, ""

    :goto_7
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_18

    .line 199
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_11

    .line 201
    iget-object v10, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_17

    .line 204
    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_a

    .line 206
    :cond_12
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 207
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v4, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 209
    :cond_13
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    const-wide v5, 0x7fffffffffffffffL

    .line 211
    invoke-interface {v3, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 212
    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    .line 214
    sget-object v5, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a:Ljava/nio/charset/Charset;

    .line 215
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 218
    :try_start_1
    sget-object v5, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 220
    :catch_0
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 221
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v4, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 222
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v4, "<-- END HTTP"

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    return-object v2

    .line 228
    :cond_14
    :goto_9
    invoke-static {v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->a(Lokio/Buffer;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 229
    iget-object v4, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v5, ""

    invoke-interface {v4, v5}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 230
    iget-object v4, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- END HTTP (binary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-byte body omitted)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    return-object v2

    :cond_15
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-eqz v4, :cond_16

    .line 235
    iget-object v4, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v6, ""

    invoke-interface {v4, v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 236
    iget-object v4, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8bf7\u6c42\u7684URL\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 237
    iget-object v4, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 240
    :cond_16
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------\u8bf7\u6c42\u7ed3\u675f\uff0c\u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/u;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 205
    :cond_17
    :goto_a
    iget-object v3, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    const-string v4, "<-- END HTTP"

    invoke-interface {v3, v4}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    :cond_18
    :goto_b
    return-object v2

    :catch_1
    move-exception v0

    .line 185
    iget-object v2, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 186
    iget-object v2, v1, Lcom/phicomm/speaker/net/interceptor/MyInterceptor;->b:Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------------\u8bf7\u6c42\u5931\u8d25\uff0c\u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/phicomm/speaker/f/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/phicomm/speaker/net/interceptor/MyInterceptor$a;->a(Ljava/lang/String;)V

    .line 187
    throw v0
.end method
