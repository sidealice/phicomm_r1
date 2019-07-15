.class abstract Ldagger/internal/Memoizer;
.super Ljava/lang/Object;
.source "Memoizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final readLock:Ljava/util/concurrent/locks/Lock;

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Ldagger/internal/Memoizer;, "Ldagger/internal/Memoizer<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ldagger/internal/Memoizer;->map:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 35
    .local v0, "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 36
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/Memoizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Ldagger/internal/Memoizer;, "Ldagger/internal/Memoizer<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 41
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_0
    iget-object v2, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 47
    :try_start_0
    iget-object v2, p0, Ldagger/internal/Memoizer;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 48
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 52
    iget-object v2, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 67
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v2, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    invoke-virtual {p0, p1}, Ldagger/internal/Memoizer;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 58
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "create returned null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v0    # "newValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 62
    .restart local v0    # "newValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iget-object v2, p0, Ldagger/internal/Memoizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_1
    iget-object v2, p0, Ldagger/internal/Memoizer;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    iget-object v2, p0, Ldagger/internal/Memoizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v2

    iget-object v3, p0, Ldagger/internal/Memoizer;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Ldagger/internal/Memoizer;, "Ldagger/internal/Memoizer<TK;TV;>;"
    iget-object v0, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    :try_start_0
    iget-object v0, p0, Ldagger/internal/Memoizer;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 78
    iget-object v1, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldagger/internal/Memoizer;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
