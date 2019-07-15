.class public Lrx/c;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c$b;,
        Lrx/c$a;
    }
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
.field final a:Lrx/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/c;->a:Lrx/c$a;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lrx/b/h;)Lrx/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/c<",
            "*>;>;",
            "Lrx/b/h<",
            "+TR;>;)",
            "Lrx/c<",
            "TR;>;"
        }
    .end annotation

    .line 3916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3917
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/c;

    .line 3918
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3920
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lrx/c;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lrx/c;->a(Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    new-instance v0, Lrx/internal/operators/k;

    invoke-direct {v0, p1}, Lrx/internal/operators/k;-><init>(Lrx/b/h;)V

    invoke-virtual {p0, v0}, Lrx/c;->a(Lrx/c$b;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lrx/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 2236
    invoke-static {p0}, Lrx/internal/util/f;->b(Ljava/lang/Object;)Lrx/internal/util/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 2099
    new-instance v0, Lrx/internal/operators/c;

    invoke-direct {v0, p0}, Lrx/internal/operators/c;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/c;->a(Lrx/c$a;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lrx/c$a;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c$a<",
            "TT;>;)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lrx/c;

    invoke-static {p0}, Lrx/e/c;->a(Lrx/c$a;)Lrx/c$a;

    move-result-object p0

    invoke-direct {v0, p0}, Lrx/c;-><init>(Lrx/c$a;)V

    return-object v0
.end method

.method static a(Lrx/i;Lrx/c;)Lrx/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i<",
            "-TT;>;",
            "Lrx/c<",
            "TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 10269
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subscriber can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10271
    :cond_0
    iget-object v0, p1, Lrx/c;->a:Lrx/c$a;

    if-nez v0, :cond_1

    .line 10272
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onSubscribe function can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10280
    :cond_1
    invoke-virtual {p0}, Lrx/i;->j_()V

    .line 10287
    instance-of v0, p0, Lrx/d/a;

    if-nez v0, :cond_2

    .line 10289
    new-instance v0, Lrx/d/a;

    invoke-direct {v0, p0}, Lrx/d/a;-><init>(Lrx/i;)V

    move-object p0, v0

    .line 10296
    :cond_2
    :try_start_0
    iget-object v0, p1, Lrx/c;->a:Lrx/c$a;

    invoke-static {p1, v0}, Lrx/e/c;->a(Lrx/c;Lrx/c$a;)Lrx/c$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lrx/c$a;->call(Ljava/lang/Object;)V

    .line 10297
    invoke-static {p0}, Lrx/e/c;->a(Lrx/j;)Lrx/j;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10300
    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 10302
    invoke-virtual {p0}, Lrx/i;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10303
    invoke-static {p1}, Lrx/e/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lrx/e/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10307
    :cond_3
    :try_start_1
    invoke-static {p1}, Lrx/e/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/i;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10319
    :goto_0
    invoke-static {}, Lrx/g/c;->a()Lrx/j;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 10309
    invoke-static {p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 10312
    new-instance v0, Lrx/exceptions/OnErrorFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred attempting to subscribe ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] and then again while trying to pass to onError."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10314
    invoke-static {v0}, Lrx/e/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10316
    throw v0
.end method


# virtual methods
.method public final a()Lrx/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 8503
    invoke-static {p0}, Lrx/internal/operators/i;->a(Lrx/c;)Lrx/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lrx/c/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 8802
    invoke-static {p0, p1}, Lrx/internal/operators/i;->a(Lrx/c;I)Lrx/c/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(IJLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            ")",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    if-gez p1, :cond_0

    .line 8869
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    .line 8871
    invoke-static/range {v0 .. v5}, Lrx/internal/operators/i;->a(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;I)Lrx/c/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/f;",
            ")",
            "Lrx/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 8957
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/i;->a(Lrx/c;JLjava/util/concurrent/TimeUnit;Lrx/f;)Lrx/c/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/b/b;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 5987
    new-instance v0, Lrx/internal/operators/g;

    invoke-direct {v0, p1}, Lrx/internal/operators/g;-><init>(Lrx/b/b;)V

    invoke-virtual {p0, v0}, Lrx/c;->a(Lrx/c$b;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/b/f;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/b/f<",
            "-TT;+TR;>;)",
            "Lrx/c<",
            "TR;>;"
        }
    .end annotation

    .line 7590
    new-instance v0, Lrx/internal/operators/e;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/e;-><init>(Lrx/c;Lrx/b/f;)V

    invoke-static {v0}, Lrx/c;->a(Lrx/c$a;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/c$b;)Lrx/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c$b<",
            "+TR;-TT;>;)",
            "Lrx/c<",
            "TR;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Lrx/internal/operators/d;

    iget-object v1, p0, Lrx/c;->a:Lrx/c$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/d;-><init>(Lrx/c$a;Lrx/c$b;)V

    invoke-static {v0}, Lrx/c;->a(Lrx/c$a;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/f;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f;",
            ")",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 7673
    sget v0, Lrx/internal/util/e;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/c;->a(Lrx/f;I)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/f;I)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f;",
            "I)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7707
    invoke-virtual {p0, p1, v0, p2}, Lrx/c;->a(Lrx/f;ZI)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/f;ZI)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f;",
            "ZI)",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 7778
    instance-of v0, p0, Lrx/internal/util/f;

    if-eqz v0, :cond_0

    .line 7779
    move-object p2, p0

    check-cast p2, Lrx/internal/util/f;

    invoke-virtual {p2, p1}, Lrx/internal/util/f;->c(Lrx/f;)Lrx/c;

    move-result-object p1

    return-object p1

    .line 7781
    :cond_0
    new-instance v0, Lrx/internal/operators/h;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/h;-><init>(Lrx/f;ZI)V

    invoke-virtual {p0, v0}, Lrx/c;->a(Lrx/c$b;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/b/b;Lrx/b/b;)Lrx/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b<",
            "-TT;>;",
            "Lrx/b/b<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/j;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 10096
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onNext can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 10099
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10102
    :cond_1
    invoke-static {}, Lrx/b/d;->a()Lrx/b/d$a;

    move-result-object v0

    .line 10103
    new-instance v1, Lrx/internal/util/a;

    invoke-direct {v1, p1, p2, v0}, Lrx/internal/util/a;-><init>(Lrx/b/b;Lrx/b/b;Lrx/b/a;)V

    invoke-virtual {p0, v1}, Lrx/c;->b(Lrx/i;)Lrx/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lrx/i;)Lrx/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    .line 10198
    :try_start_0
    invoke-virtual {p1}, Lrx/i;->j_()V

    .line 10200
    iget-object v0, p0, Lrx/c;->a:Lrx/c$a;

    invoke-static {p0, v0}, Lrx/e/c;->a(Lrx/c;Lrx/c$a;)Lrx/c$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/c$a;->call(Ljava/lang/Object;)V

    .line 10201
    invoke-static {p1}, Lrx/e/c;->a(Lrx/j;)Lrx/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10204
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 10207
    :try_start_1
    invoke-static {v0}, Lrx/e/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/i;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10218
    invoke-static {}, Lrx/g/c;->a()Lrx/j;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 10209
    invoke-static {p1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 10212
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred attempting to subscribe ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] and then again while trying to pass to onError."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10214
    invoke-static {v1}, Lrx/e/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10216
    throw v1
.end method

.method public final b(Lrx/f;)Lrx/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f;",
            ")",
            "Lrx/c<",
            "TT;>;"
        }
    .end annotation

    .line 10344
    instance-of v0, p0, Lrx/internal/util/f;

    if-eqz v0, :cond_0

    .line 10345
    move-object v0, p0

    check-cast v0, Lrx/internal/util/f;

    invoke-virtual {v0, p1}, Lrx/internal/util/f;->c(Lrx/f;)Lrx/c;

    move-result-object p1

    return-object p1

    .line 10347
    :cond_0
    new-instance v0, Lrx/internal/operators/j;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/j;-><init>(Lrx/c;Lrx/f;)V

    invoke-static {v0}, Lrx/c;->a(Lrx/c$a;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lrx/i;)Lrx/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i<",
            "-TT;>;)",
            "Lrx/j;"
        }
    .end annotation

    .line 10263
    invoke-static {p1, p0}, Lrx/c;->a(Lrx/i;Lrx/c;)Lrx/j;

    move-result-object p1

    return-object p1
.end method
