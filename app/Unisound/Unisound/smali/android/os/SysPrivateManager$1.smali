.class Landroid/os/SysPrivateManager$1;
.super Landroid/os/Handler;
.source "SysPrivateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SysPrivateManager;-><init>(Landroid/content/Context;Landroid/os/ISysPrivate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/SysPrivateManager;


# direct methods
.method constructor <init>(Landroid/os/SysPrivateManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SysPrivateManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/os/SysPrivateManager$1;->this$0:Landroid/os/SysPrivateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    const-string v1, "SysPrivateManager"

    const-string v2, "nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/SysPrivateManager$modeChangedListener;

    .line 67
    .local v0, "listener":Landroid/os/SysPrivateManager$modeChangedListener;
    if-eqz v0, :cond_0

    .line 68
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/os/SysPrivateManager$modeChangedListener;->onModeChanged(II)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
