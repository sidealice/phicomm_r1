.class public Lcom/lzy/okserver/task/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okserver/task/PriorityBlockingQueue$b;,
        Lcom/lzy/okserver/task/PriorityBlockingQueue$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    .line 156
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_0

    .line 160
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 161
    :cond_0
    iput p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    .line 162
    new-instance p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 166
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 173
    :cond_0
    iget v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v1, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_1
    new-instance v3, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v3, p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 131
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 132
    iput-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 133
    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 134
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private _enqueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 110
    :goto_0
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 112
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a()Lcom/lzy/okserver/task/Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okserver/task/Priority;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a()Lcom/lzy/okserver/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzy/okserver/task/Priority;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 113
    iput-object p1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 114
    iput-object v1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_2
    return-void
.end method

.method private declared-synchronized opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 98
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->_enqueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 99
    monitor-exit p0

    return-object p1

    .line 94
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 548
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 550
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 551
    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 555
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 530
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 533
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    iget-object v1, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_0

    .line 409
    iput-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v0, 0x0

    .line 410
    invoke-virtual {v1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 414
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_1
    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 425
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    if-ne p1, p0, :cond_1

    .line 426
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    if-gtz p2, :cond_2

    return v0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 434
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    move v2, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_4

    .line 438
    :try_start_1
    iget-object v5, v3, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 439
    invoke-virtual {v5}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 440
    invoke-virtual {v5, v6}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a(Ljava/lang/Object;)V

    .line 441
    iput-object v3, v3, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v2, :cond_3

    .line 450
    :try_start_2
    iput-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 451
    iget-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, v2, :cond_3

    move v0, v4

    :cond_3
    throw p1

    :cond_4
    if-lez v2, :cond_5

    .line 450
    iput-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 451
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_5

    move v0, v4

    .line 455
    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_6

    .line 456
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_6
    return p2

    :catchall_1
    move-exception p1

    .line 455
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_7

    .line 456
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_7
    throw p1
.end method

.method fullyLock()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;

    invoke-direct {v0, p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    const/4 v1, -0x1

    .line 241
    new-instance v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v2, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 242
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_2

    .line 246
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 248
    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_3
    if-ltz v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :catchall_0
    move-exception v0

    .line 251
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 215
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 216
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 218
    iget-object p4, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 219
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 222
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_1

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 224
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    .line 226
    :cond_2
    new-instance p2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 228
    iget p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge p2, p3, :cond_3

    iget-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_3
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_4

    .line 232
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 230
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 322
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v2, v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 326
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    .line 304
    iget-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 305
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 307
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    .line 308
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    iget v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 313
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 280
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 281
    iget-object p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 283
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 285
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 287
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object p1

    .line 290
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 291
    iget-object p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 295
    iget p3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, p3, :cond_3

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 293
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 196
    :cond_0
    new-instance v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;-><init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 201
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_1

    .line 202
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 206
    iget v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_2
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3

    .line 210
    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 208
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 2

    .line 188
    iget v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_1
    iget-object v2, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 261
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 262
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 264
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 267
    invoke-direct {p0, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    iget v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 271
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 374
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 377
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 379
    iget-object v2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v2, v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 380
    invoke-virtual {v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 379
    iget-object v2, v2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 392
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 397
    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    .line 396
    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move v0, v2

    goto :goto_0

    .line 398
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p1
.end method

.method unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p2, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 341
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method
