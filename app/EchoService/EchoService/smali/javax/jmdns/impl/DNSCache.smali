.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/AbstractMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSCache$_CacheEntry;,
        Ljavax/jmdns/impl/DNSCache$_EmptyCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<+",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EmptyCache:Ljavax/jmdns/impl/DNSCache;


# instance fields
.field private transient _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljavax/jmdns/impl/DNSCache$_EmptyCache;

    invoke-direct {v0}, Ljavax/jmdns/impl/DNSCache$_EmptyCache;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSCache;->EmptyCache:Ljavax/jmdns/impl/DNSCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 258
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .locals 1
    .param p1, "map"    # Ljavax/jmdns/impl/DNSCache;

    .prologue
    .line 264
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_0
    return-void

    .line 264
    :cond_1
    const/16 v0, 0x400

    goto :goto_0
.end method

.method private _getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 6
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 452
    monitor-enter p0

    const/4 v2, 0x0

    .line 453
    .local v2, "result":Z
    if-eqz p1, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 456
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_1

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 462
    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    if-eqz v1, :cond_2

    .line 465
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :goto_1
    const/4 v2, 0x1

    .line 472
    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 460
    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 452
    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized allValues()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 350
    .local v1, "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "entry":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 354
    .restart local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    .line 292
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/DNSCache;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;

    .prologue
    .line 408
    monitor-enter p0

    const/4 v2, 0x0

    .line 409
    .local v2, "result":Ljavax/jmdns/impl/DNSEntry;
    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 410
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_2

    .line 411
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 412
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v4, p3, :cond_1

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 413
    :cond_1
    move-object v2, v3

    .line 418
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_2
    monitor-exit p0

    return-object v2

    .line 408
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 384
    monitor-enter p0

    const/4 v2, 0x0

    .line 385
    .local v2, "result":Ljavax/jmdns/impl/DNSEntry;
    if-eqz p1, :cond_1

    .line 386
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 387
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 389
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    move-object v2, v3

    .line 396
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 384
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 365
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    move-object v0, v1

    .line 370
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    .line 368
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 364
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 431
    .local v0, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v0, :cond_3

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    .end local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .local v1, "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 435
    .local v3, "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljavax/jmdns/impl/constants/DNSRecordType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v4, p3, :cond_0

    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSEntry;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljavax/jmdns/impl/constants/DNSRecordClass;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 436
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 430
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v3    # "testDNSEntry":Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    :cond_2
    move-object v0, v1

    .line 442
    .end local v1    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v0    # "entryList":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_1
    monitor-exit p0

    return-object v0

    .line 440
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method protected getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 300
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "stringKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v2, :cond_2

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :goto_1
    return-object v0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "stringKey":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 300
    goto :goto_0

    .line 307
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "stringKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_3
    move-object v0, v3

    .line 312
    goto :goto_1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljavax/jmdns/impl/DNSCache;->put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 320
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    monitor-enter p0

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "oldValue":Ljava/util/List;, "Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 323
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v1, :cond_0

    .line 324
    invoke-interface {v1, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 328
    :goto_0
    monitor-exit p0

    return-object v2

    .line 326
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-direct {v4, p1, p2}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public declared-synchronized removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 3
    .param p1, "dnsEntry"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 482
    monitor-enter p0

    const/4 v1, 0x0

    .line 483
    .local v1, "result":Z
    if-eqz p1, :cond_0

    .line 484
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 485
    .local v0, "existingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 488
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v0    # "existingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_0
    monitor-exit p0

    return v1

    .line 482
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 6
    .param p1, "newDNSEntry"    # Ljavax/jmdns/impl/DNSEntry;
    .param p2, "existingDNSEntry"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 505
    monitor-enter p0

    const/4 v2, 0x0

    .line 506
    .local v2, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSCache;->getEntry(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 509
    .local v1, "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const/4 v0, 0x0

    .line 510
    .local v0, "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    if-eqz v1, :cond_1

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    if-eqz v1, :cond_2

    .line 519
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :goto_1
    const/4 v2, 0x1

    .line 526
    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 513
    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .restart local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljavax/jmdns/impl/DNSCache$_CacheEntry;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/jmdns/impl/DNSCache$_CacheEntry;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 505
    .end local v0    # "aNewValue":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSEntry;>;"
    .end local v1    # "oldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x7d0

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 535
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v3, "\t---- cache ----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 537
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    const-string v3, "\n\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    .end local v0    # "aLog":Ljava/lang/StringBuffer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<+Ljavax/jmdns/impl/DNSEntry;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 540
    .restart local v0    # "aLog":Ljava/lang/StringBuffer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method
