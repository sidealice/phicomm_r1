.class Lorg/litepal/crud/DataSupport$15$1;
.super Ljava/lang/Object;
.source "DataSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/litepal/crud/DataSupport$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/litepal/crud/DataSupport$15;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lorg/litepal/crud/DataSupport$15;Z)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lorg/litepal/crud/DataSupport$15$1;->this$0:Lorg/litepal/crud/DataSupport$15;

    iput-boolean p2, p0, Lorg/litepal/crud/DataSupport$15$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1553
    iget-object v0, p0, Lorg/litepal/crud/DataSupport$15$1;->this$0:Lorg/litepal/crud/DataSupport$15;

    iget-object v0, v0, Lorg/litepal/crud/DataSupport$15;->val$executor:Lorg/litepal/crud/async/SaveExecutor;

    invoke-virtual {v0}, Lorg/litepal/crud/async/SaveExecutor;->getListener()Lorg/litepal/crud/callback/SaveCallback;

    move-result-object v0

    iget-boolean v1, p0, Lorg/litepal/crud/DataSupport$15$1;->val$result:Z

    invoke-interface {v0, v1}, Lorg/litepal/crud/callback/SaveCallback;->onFinish(Z)V

    return-void
.end method
