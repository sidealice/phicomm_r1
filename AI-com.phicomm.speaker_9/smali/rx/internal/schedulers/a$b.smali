.class final Lrx/internal/schedulers/a$b;
.super Lrx/f$a;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lrx/g/b;

.field private final c:Lrx/internal/schedulers/a$a;

.field private final d:Lrx/internal/schedulers/a$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$a;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lrx/f$a;-><init>()V

    .line 178
    new-instance v0, Lrx/g/b;

    invoke-direct {v0}, Lrx/g/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    .line 184
    iput-object p1, p0, Lrx/internal/schedulers/a$b;->c:Lrx/internal/schedulers/a$a;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, Lrx/internal/schedulers/a$a;->a()Lrx/internal/schedulers/a$c;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/j;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/a$b;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 2

    .line 217
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    invoke-virtual {v0}, Lrx/g/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lrx/g/c;->a()Lrx/j;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    new-instance v1, Lrx/internal/schedulers/a$b$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/a$b$1;-><init>(Lrx/internal/schedulers/a$b;Lrx/b/a;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lrx/internal/schedulers/a$c;->b(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object p1

    .line 231
    iget-object p2, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    invoke-virtual {p2, p1}, Lrx/g/b;->a(Lrx/j;)V

    .line 232
    iget-object p2, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    invoke-virtual {p1, p2}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/g/b;)V

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 202
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->c:Lrx/internal/schedulers/a$a;

    iget-object v1, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/a$a;->a(Lrx/internal/schedulers/a$c;)V

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    invoke-virtual {v0}, Lrx/g/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .line 191
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->d:Lrx/internal/schedulers/a$c;

    invoke-virtual {v0, p0}, Lrx/internal/schedulers/a$c;->a(Lrx/b/a;)Lrx/j;

    .line 197
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$b;->b:Lrx/g/b;

    invoke-virtual {v0}, Lrx/g/b;->unsubscribe()V

    return-void
.end method
