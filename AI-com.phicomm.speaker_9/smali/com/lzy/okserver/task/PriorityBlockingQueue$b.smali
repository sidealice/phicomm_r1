.class Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/PriorityBlockingQueue<",
            "TE;>.b<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/lzy/okserver/task/PriorityBlockingQueue;

.field private c:Z

.field private d:Lcom/lzy/okserver/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okserver/task/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 565
    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Z

    .line 570
    invoke-virtual {p0, p2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/lzy/okserver/task/Priority;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    iget-object v0, v0, Lcom/lzy/okserver/task/a;->a:Lcom/lzy/okserver/task/Priority;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    goto :goto_0

    .line 591
    :cond_0
    instance-of v0, p1, Lcom/lzy/okserver/task/a;

    if-eqz v0, :cond_1

    .line 592
    check-cast p1, Lcom/lzy/okserver/task/a;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    const/4 p1, 0x1

    .line 593
    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Z

    goto :goto_0

    .line 595
    :cond_1
    new-instance v0, Lcom/lzy/okserver/task/a;

    sget-object v1, Lcom/lzy/okserver/task/Priority;->DEFAULT:Lcom/lzy/okserver/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/lzy/okserver/task/a;-><init>(Lcom/lzy/okserver/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Z

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    return-object v0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/a;

    iget-object v0, v0, Lcom/lzy/okserver/task/a;->b:Ljava/lang/Object;

    return-object v0
.end method
