.class final enum Lrx/internal/schedulers/d;
.super Ljava/lang/Enum;
.source "GenericScheduledExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/schedulers/d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lrx/internal/util/RxThreadFactory;

.field private static final synthetic b:[Lrx/internal/schedulers/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Lrx/internal/schedulers/d;

    sput-object v0, Lrx/internal/schedulers/d;->b:[Lrx/internal/schedulers/d;

    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/d;->a:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 36
    sget-object v0, Lrx/internal/schedulers/d;->a:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 44
    invoke-static {}, Lrx/e/c;->c()Lrx/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lrx/internal/schedulers/d;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-interface {v0}, Lrx/b/e;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 53
    invoke-static {}, Lrx/internal/schedulers/d;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/schedulers/d;
    .locals 1

    .line 29
    const-class v0, Lrx/internal/schedulers/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/internal/schedulers/d;

    return-object p0
.end method

.method public static values()[Lrx/internal/schedulers/d;
    .locals 1

    .line 29
    sget-object v0, Lrx/internal/schedulers/d;->b:[Lrx/internal/schedulers/d;

    invoke-virtual {v0}, [Lrx/internal/schedulers/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/schedulers/d;

    return-object v0
.end method
