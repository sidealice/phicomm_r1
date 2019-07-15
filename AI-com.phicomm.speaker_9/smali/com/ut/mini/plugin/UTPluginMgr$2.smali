.class Lcom/ut/mini/plugin/UTPluginMgr$2;
.super Landroid/os/Handler;
.source "UTPluginMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/plugin/UTPluginMgr;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ut/mini/plugin/UTPluginMgr;


# direct methods
.method constructor <init>(Lcom/ut/mini/plugin/UTPluginMgr;Landroid/os/Looper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$2;->b:Lcom/ut/mini/plugin/UTPluginMgr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ut/mini/plugin/UTPluginMgr$a;

    if-eqz v0, :cond_1

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ut/mini/plugin/UTPluginMgr$a;

    .line 65
    invoke-virtual {p1}, Lcom/ut/mini/plugin/UTPluginMgr$a;->a()Lcom/ut/mini/plugin/UTPlugin;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/ut/mini/plugin/UTPluginMgr$a;->i()I

    move-result v1

    .line 67
    invoke-virtual {p1}, Lcom/ut/mini/plugin/UTPluginMgr$a;->getMsgObj()Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 70
    :try_start_0
    instance-of v2, p1, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;

    if-eqz v2, :cond_0

    .line 71
    check-cast p1, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;

    .line 72
    invoke-virtual {p1, v0}, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->isMatchPlugin(Lcom/ut/mini/plugin/UTPlugin;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Lcom/ut/mini/plugin/UTPluginMsgDispatchDelegate;->getDispatchObject(Lcom/ut/mini/plugin/UTPlugin;)Ljava/lang/Object;

    move-result-object p1

    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/ut/mini/plugin/UTPlugin;->onPluginMsgArrivedFromSDK(ILjava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/ut/mini/plugin/UTPlugin;->onPluginMsgArrivedFromSDK(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
