.class Lorg/litepal/crud/ClusterQuery$4;
.super Ljava/lang/Object;
.source "ClusterQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/ClusterQuery;->countAsync(Ljava/lang/String;)Lorg/litepal/crud/async/CountExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/ClusterQuery;

.field final synthetic val$executor:Lorg/litepal/crud/async/CountExecutor;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/litepal/crud/ClusterQuery;Ljava/lang/String;Lorg/litepal/crud/async/CountExecutor;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery$4;->this$0:Lorg/litepal/crud/ClusterQuery;

    iput-object p2, p0, Lorg/litepal/crud/ClusterQuery$4;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/crud/ClusterQuery$4;->val$executor:Lorg/litepal/crud/async/CountExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 503
    const-class v0, Lorg/litepal/crud/DataSupport;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery$4;->this$0:Lorg/litepal/crud/ClusterQuery;

    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$4;->val$tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/litepal/crud/ClusterQuery;->count(Ljava/lang/String;)I

    move-result v1

    .line 505
    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$4;->val$executor:Lorg/litepal/crud/async/CountExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/CountExecutor;->getListener()Lorg/litepal/crud/callback/CountCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 506
    invoke-static {}, Lorg/litepal/LitePal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/ClusterQuery$4$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/ClusterQuery$4$1;-><init>(Lorg/litepal/crud/ClusterQuery$4;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
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
