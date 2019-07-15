.class Lorg/litepal/crud/DataSupport$9$1;
.super Ljava/lang/Object;
.source "DataSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/DataSupport$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/DataSupport$9;

.field final synthetic val$t:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/litepal/crud/DataSupport$9;Ljava/util/List;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lorg/litepal/crud/DataSupport$9$1;->this$0:Lorg/litepal/crud/DataSupport$9;

    iput-object p2, p0, Lorg/litepal/crud/DataSupport$9$1;->val$t:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/litepal/crud/DataSupport$9$1;->this$0:Lorg/litepal/crud/DataSupport$9;

    iget-object v0, v0, Lorg/litepal/crud/DataSupport$9;->val$executor:Lorg/litepal/crud/async/FindMultiExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/FindMultiExecutor;->getListener()Lorg/litepal/crud/callback/FindMultiCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/litepal/crud/DataSupport$9$1;->val$t:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/FindMultiCallback;->onFinish(Ljava/util/List;)V

    return-void
.end method
