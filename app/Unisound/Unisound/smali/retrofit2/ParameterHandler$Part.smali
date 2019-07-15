.class final Lretrofit2/ParameterHandler$Part;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Lokhttp3/Headers;


# direct methods
.method constructor <init>(Lokhttp3/Headers;Lretrofit2/Converter;)V
    .locals 0
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lretrofit2/ParameterHandler$Part;, "Lretrofit2/ParameterHandler$Part<TT;>;"
    .local p2, "converter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Lokhttp3/RequestBody;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 277
    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/Headers;

    .line 278
    iput-object p2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    .line 279
    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 5
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lretrofit2/ParameterHandler$Part;, "Lretrofit2/ParameterHandler$Part<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    :try_start_0
    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v2, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v0, "body":Lokhttp3/RequestBody;
    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/Headers;

    invoke-virtual {p1, v2, v0}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    goto :goto_0

    .line 287
    .end local v0    # "body":Lokhttp3/RequestBody;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to RequestBody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
