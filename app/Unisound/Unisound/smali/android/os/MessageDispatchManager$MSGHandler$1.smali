.class Landroid/os/MessageDispatchManager$MSGHandler$1;
.super Landroid/os/Handler;
.source "MessageDispatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/MessageDispatchManager$MSGHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/MessageDispatchManager$MSGHandler;


# direct methods
.method constructor <init>(Landroid/os/MessageDispatchManager$MSGHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/MessageDispatchManager$MSGHandler;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/os/MessageDispatchManager$MSGHandler$1;->this$1:Landroid/os/MessageDispatchManager$MSGHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageDispatchManager$MSGHandler$1;->this$1:Landroid/os/MessageDispatchManager$MSGHandler;

    iget-object v1, v1, Landroid/os/MessageDispatchManager$MSGHandler;->mRecvs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;

    .line 57
    .local v0, "recv":Landroid/os/MessageDispatchManager$MsgRecvFlaged;
    iget v2, v0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;->mFlags:I

    iget v3, p1, Landroid/os/Message;->what:I

    and-int/2addr v2, v3

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 58
    iget-object v2, v0, Landroid/os/MessageDispatchManager$MsgRecvFlaged;->mRecv:Landroid/os/MessageDispatchManager$MessageReceiver;

    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/os/MessageDispatchManager$MessageReceiver;->notifyMsg(IIILjava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v0    # "recv":Landroid/os/MessageDispatchManager$MsgRecvFlaged;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    return-void
.end method
