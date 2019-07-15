.class public Lcom/android/volley/toolbox/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "urlRewriter"    # Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    .line 85
    iput-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .line 254
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 255
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 256
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 259
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 261
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method

.method private static entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 151
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 154
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 159
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 160
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 155
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static hasResponseBody(II)Z
    .locals 1
    .param p0, "requestMethod"    # I
    .param p1, "responseCode"    # I

    .prologue
    .line 139
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 181
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 182
    .local v1, "timeoutMs":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 184
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 188
    const-string v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 189
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/android/volley/toolbox/HurlStack;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 192
    :cond_0
    return-object v0
.end method

.method static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown method type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v1

    .line 204
    .local v1, "postBody":[B
    if-eqz v1, :cond_0

    .line 208
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 209
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v0, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 214
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 249
    .end local v0    # "out":Ljava/io/DataOutputStream;
    .end local v1    # "postBody":[B
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_1
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_2
    const-string v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_3
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 230
    :pswitch_4
    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 234
    :pswitch_5
    const-string v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_6
    const-string v2, "OPTIONS"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_7
    const-string v2, "TRACE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_8
    const-string v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, "url":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 94
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v15, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/volley/toolbox/HurlStack;->mUrlRewriter:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    invoke-interface {v15, v14}, Lcom/android/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "rewritten":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 98
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "URL blocked by rewriter: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 100
    :cond_0
    move-object v14, v13

    .line 102
    .end local v13    # "rewritten":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v8, "parsedUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/volley/toolbox/HurlStack;->openConnection(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 104
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, "headerName":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v5    # "headerName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/volley/toolbox/HurlStack;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 109
    new-instance v9, Lorg/apache/http/ProtocolVersion;

    const-string v15, "HTTP"

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v15, v0, v1}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 110
    .local v9, "protocolVersion":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 111
    .local v11, "responseCode":I
    const/4 v15, -0x1

    if-ne v11, v15, :cond_3

    .line 114
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 116
    :cond_3
    new-instance v12, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v9, v15, v0}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 118
    .local v12, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v10, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v10, v12}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 119
    .local v10, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v15

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/volley/toolbox/HurlStack;->hasResponseBody(II)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 120
    invoke-static {v2}, Lcom/android/volley/toolbox/HurlStack;->entityFromConnection(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-virtual {v10, v15}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 123
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 124
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v3, "h":Lorg/apache/http/Header;
    invoke-virtual {v10, v3}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 128
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    return-object v10
.end method
