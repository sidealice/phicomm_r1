.class final Lorg/litepal/crud/DataSupport$6;
.super Ljava/lang/Object;
.source "DataSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/DataSupport;->findAsync(Ljava/lang/Class;JZ)Lorg/litepal/crud/async/FindExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Lorg/litepal/crud/async/FindExecutor;

.field final synthetic val$id:J

.field final synthetic val$isEager:Z

.field final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;JZLorg/litepal/crud/async/FindExecutor;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lorg/litepal/crud/DataSupport$6;->val$modelClass:Ljava/lang/Class;

    iput-wide p2, p0, Lorg/litepal/crud/DataSupport$6;->val$id:J

    iput-boolean p4, p0, Lorg/litepal/crud/DataSupport$6;->val$isEager:Z

    iput-object p5, p0, Lorg/litepal/crud/DataSupport$6;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 788
    const-class v0, Lorg/litepal/crud/DataSupport;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/DataSupport$6;->val$modelClass:Ljava/lang/Class;

    iget-wide v2, p0, Lorg/litepal/crud/DataSupport$6;->val$id:J

    iget-boolean v4, p0, Lorg/litepal/crud/DataSupport$6;->val$isEager:Z

    invoke-static {v1, v2, v3, v4}, Lorg/litepal/crud/DataSupport;->find(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lorg/litepal/crud/DataSupport$6;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindExecutor;->getListener()Lorg/litepal/crud/callback/FindCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 791
    invoke-static {}, Lorg/litepal/LitePal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/DataSupport$6$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/DataSupport$6$1;-><init>(Lorg/litepal/crud/DataSupport$6;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
