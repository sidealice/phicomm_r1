.class final Lretrofit2/ParameterHandler$PartMap;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PartMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final transferEncoding:Ljava/lang/String;

.field private final valueConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Converter;Ljava/lang/String;)V
    .locals 0
    .param p2, "transferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/RequestBody;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lretrofit2/ParameterHandler$PartMap;, "Lretrofit2/ParameterHandler$PartMap<TT;>;"
    .local p1, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Lokhttp3/RequestBody;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 313
    iput-object p1, p0, Lretrofit2/ParameterHandler$PartMap;->valueConverter:Lretrofit2/Converter;

    .line 314
    iput-object p2, p0, Lretrofit2/ParameterHandler$PartMap;->transferEncoding:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method bridge synthetic apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lretrofit2/ParameterHandler$PartMap;, "Lretrofit2/ParameterHandler$PartMap<TT;>;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lretrofit2/ParameterHandler$PartMap;->apply(Lretrofit2/RequestBuilder;Ljava/util/Map;)V

    return-void
.end method

.method apply(Lretrofit2/RequestBuilder;Ljava/util/Map;)V
    .locals 9
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lretrofit2/ParameterHandler$PartMap;, "Lretrofit2/ParameterHandler$PartMap<TT;>;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-nez p2, :cond_0

    .line 320
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Part map was null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 324
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .local v1, "entryKey":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 326
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Part map contained null key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 329
    .local v2, "entryValue":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 330
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Part map contained null value for key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_2
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Content-Disposition"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "form-data; name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "Content-Transfer-Encoding"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lretrofit2/ParameterHandler$PartMap;->transferEncoding:Ljava/lang/String;

    aput-object v7, v4, v6

    invoke-static {v4}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v3

    .line 338
    .local v3, "headers":Lokhttp3/Headers;
    iget-object v4, p0, Lretrofit2/ParameterHandler$PartMap;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v4, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/RequestBody;

    invoke-virtual {p1, v3, v4}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    goto :goto_0

    .line 340
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v1    # "entryKey":Ljava/lang/String;
    .end local v2    # "entryValue":Ljava/lang/Object;, "TT;"
    .end local v3    # "headers":Lokhttp3/Headers;
    :cond_3
    return-void
.end method
