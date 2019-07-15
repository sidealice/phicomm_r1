.class Lorg/litepal/crud/ClusterQuery$1;
.super Ljava/lang/Object;
.source "ClusterQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/ClusterQuery;->findAsync(Ljava/lang/Class;Z)Lorg/litepal/crud/async/FindMultiExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/ClusterQuery;

.field final synthetic val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

.field final synthetic val$isEager:Z

.field final synthetic val$modelClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/litepal/crud/ClusterQuery;Ljava/lang/Class;ZLorg/litepal/crud/async/FindMultiExecutor;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery$1;->this$0:Lorg/litepal/crud/ClusterQuery;

    iput-object p2, p0, Lorg/litepal/crud/ClusterQuery$1;->val$modelClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lorg/litepal/crud/ClusterQuery$1;->val$isEager:Z

    iput-object p4, p0, Lorg/litepal/crud/ClusterQuery$1;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    const-class v0, Lorg/litepal/crud/DataSupport;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery$1;->this$0:Lorg/litepal/crud/ClusterQuery;

    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$1;->val$modelClass:Ljava/lang/Class;

    iget-boolean v3, p0, Lorg/litepal/crud/ClusterQuery$1;->val$isEager:Z

    invoke-virtual {v1, v2, v3}, Lorg/litepal/crud/ClusterQuery;->find(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$1;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindMultiExecutor;->getListener()Lorg/litepal/crud/callback/FindMultiCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 252
    invoke-static {}, Lorg/litepal/LitePal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/ClusterQuery$1$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/ClusterQuery$1$1;-><init>(Lorg/litepal/crud/ClusterQuery$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
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
