.class final Lorg/xutils/image/MemCacheKey;
.super Ljava/lang/Object;
.source "MemCacheKey.java"


# instance fields
.field public final options:Lorg/xutils/image/ImageOptions;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/xutils/image/ImageOptions;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 17
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 23
    :cond_0
    :goto_0
    return v1

    .line 18
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 20
    check-cast v0, Lorg/xutils/image/MemCacheKey;

    .line 22
    .local v0, "that":Lorg/xutils/image/MemCacheKey;
    iget-object v2, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    iget-object v3, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    iget-object v2, v0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v2}, Lorg/xutils/image/ImageOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 30
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 31
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
