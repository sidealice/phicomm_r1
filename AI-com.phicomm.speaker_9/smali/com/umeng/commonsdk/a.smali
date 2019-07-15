.class public Lcom/umeng/commonsdk/a;
.super Ljava/lang/Object;
.source "UMConfigureInternation.java"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lcom/umeng/commonsdk/a;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 25
    :try_start_0
    sget-boolean v2, Lcom/umeng/commonsdk/a;->a:Z

    if-nez v2, :cond_0

    .line 26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/umeng/commonsdk/a$1;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/a$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 47
    sput-boolean v1, Lcom/umeng/commonsdk/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "internal"

    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 24
    :goto_0
    monitor-exit v0

    throw p0

    .line 53
    :cond_0
    :goto_1
    monitor-exit v0

    return-void
.end method
