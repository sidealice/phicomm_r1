.class Lorg/litepal/crud/ClusterQuery$5$1;
.super Ljava/lang/Object;
.source "ClusterQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/ClusterQuery$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/litepal/crud/ClusterQuery$5;

.field final synthetic val$average:D


# direct methods
.method constructor <init>(Lorg/litepal/crud/ClusterQuery$5;D)V
    .locals 0

    .line 597
    iput-object p1, p0, Lorg/litepal/crud/ClusterQuery$5$1;->this$1:Lorg/litepal/crud/ClusterQuery$5;

    iput-wide p2, p0, Lorg/litepal/crud/ClusterQuery$5$1;->val$average:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 600
    iget-object v0, p0, Lorg/litepal/crud/ClusterQuery$5$1;->this$1:Lorg/litepal/crud/ClusterQuery$5;

    iget-object v0, v0, Lorg/litepal/crud/ClusterQuery$5;->val$executor:Lorg/litepal/crud/async/AverageExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/AverageExecutor;->getListener()Lorg/litepal/crud/callback/AverageCallback;

    move-result-object v0

    iget-wide v1, p0, Lorg/litepal/crud/ClusterQuery$5$1;->val$average:D

    invoke-interface {v0, v1, v2}, Lorg/litepal/crud/callback/AverageCallback;->onFinish(D)V

    return-void
.end method
