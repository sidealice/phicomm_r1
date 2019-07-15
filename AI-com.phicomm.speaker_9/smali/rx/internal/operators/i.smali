.class public final Lrx/internal/operators/i;
.super Lrx/c/a;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/i$f;,
        Lrx/internal/operators/i$g;,
        Lrx/internal/operators/i$a;,
        Lrx/internal/operators/i$c;,
        Lrx/internal/operators/i$h;,
        Lrx/internal/operators/i$d;,
        Lrx/internal/operators/i$b;,
        Lrx/internal/operators/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:Lrx/b/e;


# instance fields
.field final b:Lrx/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/i$e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e<",
            "+",
            "Lrx/internal/operators/i$d<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lrx/internal/operators/i$1;

    invoke-direct {v0}, Lrx/internal/operators/i$1;-><init>()V

    sput-object v0, Lrx/internal/operators/i;->e:Lrx/b/e;

    return-void
.end method

.method private constructor <init>(Lrx/c$a;Lrx/c;Ljava/util/concurrent/atomic/AtomicReference;Lrx/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c$a<",
            "TT;>;",
            "Lrx/c<",
            "+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/internal/operators/i$e<",
            "TT;>;>;",
            "Lrx/b/e<",
            "+",
            "Lrx/internal/operators/i$d<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lrx/c/a;-><init>(Lrx/c$a;)V

    .line 252
    iput-object p2, p0, Lrx/internal/operators/i;->b:Lrx/c;

    .line 253
    iput-object p3, p0, Lrx/internal/operators/i;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lrx/internal/operators/i;->d:Lrx/b/e;

    return-void
.end method

.method public static a(Lrx/c;)Lrx/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "+TT;>;)",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 132
    sget-object v0, Lrx/internal/operators/i;->e:Lrx/b/e;

    invoke-static {p0, v0}, Lrx/internal/operators/i;->a(Lrx/c;Lrx/b/e;)Lrx/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lrx/c;I)Lrx/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "+TT;>;I)",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 146
    invoke-static {p0}, Lrx/internal/operators/i;->a(Lrx/c;)Lrx/c/a;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    new-instance v0, Lrx/internal/operators/i$2;

    invoke-direct {v0, p1}, Lrx/internal/operators/i$2;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/i;->a(Lrx/c;Lrx/b/e;)Lrx/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            ")",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 168
    invoke-static/range {v0 .. v5}, Lrx/internal/operators/i;->a(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;I)Lrx/c/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;I)Lrx/c/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            "I)",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 183
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 184
    new-instance p3, Lrx/internal/operators/i$3;

    invoke-direct {p3, p5, p1, p2, p4}, Lrx/internal/operators/i$3;-><init>(IJLrx/f;)V

    invoke-static {p0, p3}, Lrx/internal/operators/i;->a(Lrx/c;Lrx/b/e;)Lrx/c/a;

    move-result-object p0

    return-object p0
.end method

.method static a(Lrx/c;Lrx/b/e;)Lrx/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "+TT;>;",
            "Lrx/b/e<",
            "+",
            "Lrx/internal/operators/i$d<",
            "TT;>;>;)",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    new-instance v1, Lrx/internal/operators/i$4;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/i$4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/b/e;)V

    .line 246
    new-instance v2, Lrx/internal/operators/i;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/i;-><init>(Lrx/c$a;Lrx/c;Ljava/util/concurrent/atomic/AtomicReference;Lrx/b/e;)V

    return-object v2
.end method


# virtual methods
.method public b(Lrx/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-",
            "Lrx/j;",
            ">;)V"
        }
    .end annotation

    .line 264
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/i;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$e;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lrx/internal/operators/i$e;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    :cond_0
    new-instance v1, Lrx/internal/operators/i$e;

    iget-object v2, p0, Lrx/internal/operators/i;->d:Lrx/b/e;

    invoke-interface {v2}, Lrx/b/e;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/i$d;

    invoke-direct {v1, v2}, Lrx/internal/operators/i$e;-><init>(Lrx/internal/operators/i$d;)V

    .line 270
    invoke-virtual {v1}, Lrx/internal/operators/i$e;->b()V

    .line 272
    iget-object v2, p0, Lrx/internal/operators/i;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 281
    :cond_2
    iget-object v1, v0, Lrx/internal/operators/i$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lrx/internal/operators/i$e;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 297
    :goto_1
    invoke-interface {p1, v0}, Lrx/b/b;->call(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 299
    iget-object p1, p0, Lrx/internal/operators/i;->b:Lrx/c;

    invoke-virtual {p1, v0}, Lrx/c;->a(Lrx/i;)Lrx/j;

    :cond_4
    return-void
.end method
