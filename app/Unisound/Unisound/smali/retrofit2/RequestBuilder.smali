.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private final baseUrl:Lokhttp3/HttpUrl;

.field private body:Lokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lokhttp3/FormBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/MultipartBody$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private urlBuilder:Lokhttp3/HttpUrl$Builder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lokhttp3/HttpUrl;
    .param p3, "relativeUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "headers"    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "contentType"    # Lokhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    .line 54
    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 55
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 56
    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 57
    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    .line 59
    if-eqz p4, :cond_0

    .line 60
    iget-object v0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 63
    :cond_0
    if-eqz p7, :cond_2

    .line 65
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    if-eqz p8, :cond_1

    .line 68
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    iput-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    .line 69
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "alreadyEncoded"    # Z

    .prologue
    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 101
    .local v0, "codePoint":I
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_0

    const-string v4, " \"<>^`{}|\\?#"

    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p1, :cond_2

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x25

    if-ne v0, v4, :cond_2

    .line 105
    :cond_0
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 106
    .local v3, "out":Lokio/Buffer;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 107
    invoke-static {v3, p0, v1, v2, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 108
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 113
    .end local v0    # "codePoint":I
    .end local v3    # "out":Lokio/Buffer;
    .end local p0    # "input":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 99
    .restart local v0    # "codePoint":I
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method private static canonicalizeForPath(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "alreadyEncoded"    # Z

    .prologue
    const/16 v6, 0x25

    .line 118
    const/4 v3, 0x0

    .line 120
    .local v3, "utf8Buffer":Lokio/Buffer;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 122
    .local v1, "codePoint":I
    if-eqz p4, :cond_1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 120
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 125
    :cond_1
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v1, v4, :cond_2

    const-string v4, " \"<>^`{}|\\?#"

    .line 126
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-nez p4, :cond_4

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_2

    if-ne v1, v6, :cond_4

    .line 129
    :cond_2
    if-nez v3, :cond_3

    .line 130
    new-instance v3, Lokio/Buffer;

    .end local v3    # "utf8Buffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 132
    .restart local v3    # "utf8Buffer":Lokio/Buffer;
    :cond_3
    invoke-virtual {v3, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 133
    :goto_2
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 135
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 136
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 137
    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 141
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_1

    .line 144
    .end local v1    # "codePoint":I
    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 168
    if-eqz p3, :cond_0

    .line 169
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v1, "Content-Type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 80
    .local v0, "type":Lokhttp3/MediaType;
    if-nez v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iput-object v0, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 87
    .end local v0    # "type":Lokhttp3/MediaType;
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v1, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0
.end method

.method addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 1
    .param p1, "headers"    # Lokhttp3/Headers;
    .param p2, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 177
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 178
    return-void
.end method

.method addPart(Lokhttp3/MultipartBody$Part;)V
    .locals 1
    .param p1, "part"    # Lokhttp3/MultipartBody$Part;

    .prologue
    .line 182
    iget-object v0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    .line 183
    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "encoded"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 150
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 157
    :cond_1
    if-eqz p3, :cond_2

    .line 159
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0
.end method

.method build()Lokhttp3/Request;
    .locals 8

    .prologue
    .line 191
    iget-object v4, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    .line 192
    .local v4, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 204
    .local v3, "url":Lokhttp3/HttpUrl;
    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 205
    .local v0, "body":Lokhttp3/RequestBody;
    if-nez v0, :cond_1

    .line 207
    iget-object v5, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    if-eqz v5, :cond_4

    .line 208
    iget-object v5, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {v5}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 217
    :cond_1
    :goto_0
    iget-object v2, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    .line 218
    .local v2, "contentType":Lokhttp3/MediaType;
    if-eqz v2, :cond_2

    .line 219
    if-eqz v0, :cond_6

    .line 220
    new-instance v1, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v1, v0, v2}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    .end local v0    # "body":Lokhttp3/RequestBody;
    .local v1, "body":Lokhttp3/RequestBody;
    move-object v0, v1

    .line 226
    .end local v1    # "body":Lokhttp3/RequestBody;
    .restart local v0    # "body":Lokhttp3/RequestBody;
    :cond_2
    :goto_1
    iget-object v5, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    .line 227
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v5

    iget-object v6, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    .line 228
    invoke-virtual {v5, v6, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 226
    return-object v5

    .line 197
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "contentType":Lokhttp3/MediaType;
    .end local v3    # "url":Lokhttp3/HttpUrl;
    :cond_3
    iget-object v5, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v6, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    .line 198
    .restart local v3    # "url":Lokhttp3/HttpUrl;
    if-nez v3, :cond_0

    .line 199
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed URL. Base: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Relative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 209
    .restart local v0    # "body":Lokhttp3/RequestBody;
    :cond_4
    iget-object v5, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    if-eqz v5, :cond_5

    .line 210
    iget-object v5, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {v5}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_5
    iget-boolean v5, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v5, :cond_1

    .line 213
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 222
    .restart local v2    # "contentType":Lokhttp3/MediaType;
    :cond_6
    iget-object v5, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    const-string v6, "Content-Type"

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1
.end method

.method setBody(Lokhttp3/RequestBody;)V
    .locals 0
    .param p1, "body"    # Lokhttp3/RequestBody;

    .prologue
    .line 186
    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    .line 187
    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 1
    .param p1, "relativeUrl"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 75
    return-void
.end method
