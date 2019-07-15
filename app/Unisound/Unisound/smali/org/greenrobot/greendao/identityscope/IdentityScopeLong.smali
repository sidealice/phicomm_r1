.class public Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;
.super Ljava/lang/Object;
.source "IdentityScopeLong.java"

# interfaces
.implements Lorg/greenrobot/greendao/identityscope/IdentityScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/greenrobot/greendao/identityscope/IdentityScope",
        "<",
        "Ljava/lang/Long;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final map:Lorg/greenrobot/greendao/internal/LongHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/internal/LongHashMap",
            "<",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-direct {v0}, Lorg/greenrobot/greendao/internal/LongHashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/LongHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public detach(Ljava/lang/Long;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->remove(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public bridge synthetic detach(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->detach(Ljava/lang/Long;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get2(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/greenrobot/greendao/internal/LongHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 56
    .end local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 61
    .restart local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get2NoLock(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/greenrobot/greendao/internal/LongHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 67
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNoLock(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2NoLock(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNoLock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->getNoLock(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    return-void
.end method

.method public put(Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2(JLjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put(Ljava/lang/Long;Ljava/lang/Object;)V

    return-void
.end method

.method public put2(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/greenrobot/greendao/internal/LongHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put2NoLock(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lorg/greenrobot/greendao/internal/LongHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public putNoLock(Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2NoLock(JLjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public bridge synthetic putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->putNoLock(Ljava/lang/Long;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 127
    .local v0, "key":Ljava/lang/Long;
    iget-object v2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/greenrobot/greendao/internal/LongHashMap;->remove(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "key":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    return-void
.end method

.method public remove(Ljava/lang/Long;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Long;

    .prologue
    .line 114
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/internal/LongHashMap;->remove(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->remove(Ljava/lang/Long;)V

    return-void
.end method

.method public reserveRoom(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 156
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->map:Lorg/greenrobot/greendao/internal/LongHashMap;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/internal/LongHashMap;->reserveRoom(I)V

    .line 157
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;, "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<TT;>;"
    iget-object v0, p0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    return-void
.end method
