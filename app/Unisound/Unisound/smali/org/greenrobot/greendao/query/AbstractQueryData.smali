.class abstract Lorg/greenrobot/greendao/query/AbstractQueryData;
.super Ljava/lang/Object;
.source "AbstractQueryData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lorg/greenrobot/greendao/query/AbstractQuery",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field final initialValues:[Ljava/lang/String;

.field final queriesForThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TQ;>;>;"
        }
    .end annotation
.end field

.field final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "initialValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<TT;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 17
    iput-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->sql:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation
.end method

.method forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    .line 34
    .local v4, "threadId":I
    if-nez v4, :cond_2

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 37
    .local v0, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 38
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot handle thread ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_1
    long-to-int v4, v0

    .line 42
    .end local v0    # "id":J
    :cond_2
    iget-object v6, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    monitor-enter v6

    .line 43
    :try_start_0
    iget-object v5, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 44
    .local v3, "queryRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TQ;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/greenrobot/greendao/query/AbstractQuery;

    move-object v2, v5

    .line 45
    .local v2, "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :goto_0
    if-nez v2, :cond_4

    .line 46
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->gc()V

    .line 47
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v2

    .line 48
    iget-object v5, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    :goto_1
    monitor-exit v6

    return-object v2

    .line 44
    .end local v2    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 50
    .restart local v2    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_4
    iget-object v5, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v2, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v5, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 53
    .end local v2    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    .end local v3    # "queryRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TQ;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)TQ;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    .local p1, "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    const/4 v3, 0x0

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .end local p1    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :goto_0
    return-object p1

    .restart local p1    # "query":Lorg/greenrobot/greendao/query/AbstractQuery;, "TQ;"
    :cond_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    goto :goto_0
.end method

.method gc()V
    .locals 4

    .prologue
    .line 59
    .local p0, "this":Lorg/greenrobot/greendao/query/AbstractQueryData;, "Lorg/greenrobot/greendao/query/AbstractQueryData<TT;TQ;>;"
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 61
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 65
    :cond_1
    monitor-exit v2

    .line 66
    return-void

    .line 65
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
