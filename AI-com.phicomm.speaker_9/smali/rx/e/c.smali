.class public final Lrx/e/c;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static volatile a:Lrx/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/b<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile b:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/c$a;",
            "Lrx/c$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile c:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/g$a;",
            "Lrx/g$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile d:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/a$a;",
            "Lrx/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile e:Lrx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/g<",
            "Lrx/c;",
            "Lrx/c$a;",
            "Lrx/c$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile f:Lrx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/g<",
            "Lrx/g;",
            "Lrx/g$a;",
            "Lrx/g$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile g:Lrx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/g<",
            "Lrx/a;",
            "Lrx/a$a;",
            "Lrx/a$a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile h:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/f;",
            "Lrx/f;",
            ">;"
        }
    .end annotation
.end field

.field static volatile i:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/b/a;",
            "Lrx/b/a;",
            ">;"
        }
    .end annotation
.end field

.field static volatile j:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/j;",
            "Lrx/j;",
            ">;"
        }
    .end annotation
.end field

.field static volatile k:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/j;",
            "Lrx/j;",
            ">;"
        }
    .end annotation
.end field

.field static volatile l:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static volatile m:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile n:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile o:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile p:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/c$b;",
            "Lrx/c$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile q:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/c$b;",
            "Lrx/c$b;",
            ">;"
        }
    .end annotation
.end field

.field static volatile r:Lrx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/f<",
            "Lrx/a$b;",
            "Lrx/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 88
    invoke-static {}, Lrx/e/c;->a()V

    return-void
.end method

.method public static a(Lrx/a$a;)Lrx/a$a;
    .locals 1

    .line 364
    sget-object v0, Lrx/e/c;->d:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/a$a;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lrx/b/a;)Lrx/b/a;
    .locals 1

    .line 417
    sget-object v0, Lrx/e/c;->i:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/b/a;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lrx/c$a;)Lrx/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c$a<",
            "TT;>;)",
            "Lrx/c$a<",
            "TT;>;"
        }
    .end annotation

    .line 336
    sget-object v0, Lrx/e/c;->b:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c$a;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lrx/c;Lrx/c$a;)Lrx/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c<",
            "TT;>;",
            "Lrx/c$a<",
            "TT;>;)",
            "Lrx/c$a<",
            "TT;>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lrx/e/c;->e:Lrx/b/g;

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p0, p1}, Lrx/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c$a;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static a(Lrx/c$b;)Lrx/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c$b<",
            "TR;TT;>;)",
            "Lrx/c$b<",
            "TR;TT;>;"
        }
    .end annotation

    .line 475
    sget-object v0, Lrx/e/c;->p:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c$b;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lrx/f;)Lrx/f;
    .locals 1

    .line 377
    sget-object v0, Lrx/e/c;->h:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/f;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Lrx/j;)Lrx/j;
    .locals 1

    .line 446
    sget-object v0, Lrx/e/c;->j:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/j;

    return-object p0

    :cond_0
    return-object p0
.end method

.method static a()V
    .locals 1

    .line 102
    new-instance v0, Lrx/e/c$1;

    invoke-direct {v0}, Lrx/e/c$1;-><init>()V

    sput-object v0, Lrx/e/c;->a:Lrx/b/b;

    .line 109
    new-instance v0, Lrx/e/c$9;

    invoke-direct {v0}, Lrx/e/c$9;-><init>()V

    sput-object v0, Lrx/e/c;->e:Lrx/b/g;

    .line 116
    new-instance v0, Lrx/e/c$10;

    invoke-direct {v0}, Lrx/e/c$10;-><init>()V

    sput-object v0, Lrx/e/c;->j:Lrx/b/f;

    .line 123
    new-instance v0, Lrx/e/c$11;

    invoke-direct {v0}, Lrx/e/c$11;-><init>()V

    sput-object v0, Lrx/e/c;->f:Lrx/b/g;

    .line 138
    new-instance v0, Lrx/e/c$12;

    invoke-direct {v0}, Lrx/e/c$12;-><init>()V

    sput-object v0, Lrx/e/c;->k:Lrx/b/f;

    .line 145
    new-instance v0, Lrx/e/c$13;

    invoke-direct {v0}, Lrx/e/c$13;-><init>()V

    sput-object v0, Lrx/e/c;->g:Lrx/b/g;

    .line 152
    new-instance v0, Lrx/e/c$14;

    invoke-direct {v0}, Lrx/e/c$14;-><init>()V

    sput-object v0, Lrx/e/c;->i:Lrx/b/f;

    .line 159
    new-instance v0, Lrx/e/c$15;

    invoke-direct {v0}, Lrx/e/c$15;-><init>()V

    sput-object v0, Lrx/e/c;->m:Lrx/b/f;

    .line 166
    new-instance v0, Lrx/e/c$16;

    invoke-direct {v0}, Lrx/e/c$16;-><init>()V

    sput-object v0, Lrx/e/c;->p:Lrx/b/f;

    .line 173
    new-instance v0, Lrx/e/c$2;

    invoke-direct {v0}, Lrx/e/c$2;-><init>()V

    sput-object v0, Lrx/e/c;->n:Lrx/b/f;

    .line 180
    new-instance v0, Lrx/e/c$3;

    invoke-direct {v0}, Lrx/e/c$3;-><init>()V

    sput-object v0, Lrx/e/c;->q:Lrx/b/f;

    .line 187
    new-instance v0, Lrx/e/c$4;

    invoke-direct {v0}, Lrx/e/c$4;-><init>()V

    sput-object v0, Lrx/e/c;->o:Lrx/b/f;

    .line 194
    new-instance v0, Lrx/e/c$5;

    invoke-direct {v0}, Lrx/e/c$5;-><init>()V

    sput-object v0, Lrx/e/c;->r:Lrx/b/f;

    .line 201
    invoke-static {}, Lrx/e/c;->b()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    .line 302
    sget-object v0, Lrx/e/c;->a:Lrx/b/b;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    invoke-interface {v0, p0}, Lrx/b/b;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 313
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 316
    invoke-static {v0}, Lrx/e/c;->b(Ljava/lang/Throwable;)V

    .line 319
    :cond_0
    invoke-static {p0}, Lrx/e/c;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lrx/c$b;)Lrx/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c$b<",
            "TR;TT;>;)",
            "Lrx/c$b<",
            "TR;TT;>;"
        }
    .end annotation

    .line 533
    sget-object v0, Lrx/e/c;->q:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c$b;

    return-object p0

    :cond_0
    return-object p0
.end method

.method static b()V
    .locals 1

    .line 206
    new-instance v0, Lrx/e/c$6;

    invoke-direct {v0}, Lrx/e/c$6;-><init>()V

    sput-object v0, Lrx/e/c;->b:Lrx/b/f;

    .line 213
    new-instance v0, Lrx/e/c$7;

    invoke-direct {v0}, Lrx/e/c$7;-><init>()V

    sput-object v0, Lrx/e/c;->c:Lrx/b/f;

    .line 220
    new-instance v0, Lrx/e/c$8;

    invoke-direct {v0}, Lrx/e/c$8;-><init>()V

    sput-object v0, Lrx/e/c;->d:Lrx/b/f;

    return-void
.end method

.method static b(Ljava/lang/Throwable;)V
    .locals 2

    .line 323
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 325
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 459
    sget-object v0, Lrx/e/c;->m:Lrx/b/f;

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p0}, Lrx/b/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static c()Lrx/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b/e<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .line 1237
    sget-object v0, Lrx/e/c;->l:Lrx/b/e;

    return-object v0
.end method
