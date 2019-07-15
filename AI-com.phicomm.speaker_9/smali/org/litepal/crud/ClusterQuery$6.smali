.class Lorg/litepal/crud/ClusterQuery$6;
.super Ljava/lang/Object;
.source "ClusterQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/ClusterQuery;->maxAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/litepal/crud/async/FindExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/ClusterQuery;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnType:Ljava/lang/Class;

.field final synthetic val$executor:Lorg/litepal/crud/async/FindExecutor;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/litepal/crud/ClusterQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lorg/litepal/crud/async/FindExecutor;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery$6;->this$0:Lorg/litepal/crud/ClusterQuery;

    iput-object p2, p0, Lorg/litepal/crud/ClusterQuery$6;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lorg/litepal/crud/ClusterQuery$6;->val$columnName:Ljava/lang/String;

    iput-object p4, p0, Lorg/litepal/crud/ClusterQuery$6;->val$columnType:Ljava/lang/Class;

    iput-object p5, p0, Lorg/litepal/crud/ClusterQuery$6;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 695
    const-class v0, Lorg/litepal/crud/DataSupport;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/ClusterQuery$6;->this$0:Lorg/litepal/crud/ClusterQuery;

    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$6;->val$tableName:Ljava/lang/String;

    iget-object v3, p0, Lorg/litepal/crud/ClusterQuery$6;->val$columnName:Ljava/lang/String;

    iget-object v4, p0, Lorg/litepal/crud/ClusterQuery$6;->val$columnType:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v4}, Lorg/litepal/crud/ClusterQuery;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lorg/litepal/crud/ClusterQuery$6;->val$executor:Lorg/litepal/crud/async/FindExecutor;

    invoke-virtual {v2}, Lorg/litepal/crud/async/FindExecutor;->getListener()Lorg/litepal/crud/callback/FindCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 698
    invoke-static {}, Lorg/litepal/LitePal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/litepal/crud/ClusterQuery$6$1;

    invoke-direct {v3, p0, v1}, Lorg/litepal/crud/ClusterQuery$6$1;-><init>(Lorg/litepal/crud/ClusterQuery$6;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
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
