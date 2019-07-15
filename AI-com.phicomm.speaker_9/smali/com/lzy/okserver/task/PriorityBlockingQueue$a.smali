.class Lcom/lzy/okserver/task/PriorityBlockingQueue$a;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

.field private b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;)V
    .locals 1

    .line 470
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 473
    :try_start_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 474
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private a(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;)",
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TE;>;"
        }
    .end annotation

    .line 486
    :goto_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-ne v0, p1, :cond_0

    .line 487
    iget-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object p1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object p1, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 499
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-direct {p0, v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 500
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public remove()V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v1, 0x0

    .line 512
    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    .line 513
    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_1
    iget-object v2, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method
