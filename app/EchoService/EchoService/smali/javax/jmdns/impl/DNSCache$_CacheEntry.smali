.class public Ljavax/jmdns/impl/DNSCache$_CacheEntry;
.super Ljava/lang/Object;
.source "DNSCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "_CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _key:Ljava/lang/String;

.field private _value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 165
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    instance-of v0, p1, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    .line 174
    check-cast p1, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    .end local p1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 218
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 221
    .end local p1    # "entry":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "entry":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->setValue(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 200
    .local v0, "oldValue":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    iput-object p1, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    .line 201
    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 238
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v3, "\n\t\tname \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v3, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget-object v3, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    iget-object v3, p0, Ljavax/jmdns/impl/DNSCache$_CacheEntry;->_value:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/DNSEntry;

    .line 243
    .local v1, "entry":Ljavax/jmdns/impl/DNSEntry;
    const-string v3, "\n\t\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v0    # "aLog":Ljava/lang/StringBuffer;
    .end local v1    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 247
    .restart local v0    # "aLog":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    const-string v3, " no entries"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method
