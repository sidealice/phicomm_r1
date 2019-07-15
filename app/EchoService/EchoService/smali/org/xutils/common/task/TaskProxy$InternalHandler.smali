.class final Lorg/xutils/common/task/TaskProxy$InternalHandler;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/TaskProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InternalHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-class v0, Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/common/task/TaskProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xutils/common/task/TaskProxy$1;

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 171
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 172
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "msg must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_0
    const/4 v3, 0x0

    .line 175
    .local v3, "taskProxy":Lorg/xutils/common/task/TaskProxy;
    const/4 v0, 0x0

    .line 176
    .local v0, "args":[Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lorg/xutils/common/task/TaskProxy;

    if-eqz v5, :cond_2

    .line 177
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3    # "taskProxy":Lorg/xutils/common/task/TaskProxy;
    check-cast v3, Lorg/xutils/common/task/TaskProxy;

    .line 183
    .restart local v3    # "taskProxy":Lorg/xutils/common/task/TaskProxy;
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 184
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "msg.obj not instanceof TaskProxy"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    if-eqz v5, :cond_1

    .line 179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    .line 180
    .local v1, "argsObj":Lorg/xutils/common/task/TaskProxy$ArgsObj;
    iget-object v3, v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 181
    iget-object v0, v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;->args:[Ljava/lang/Object;

    goto :goto_0

    .line 188
    .end local v1    # "argsObj":Lorg/xutils/common/task/TaskProxy$ArgsObj;
    :cond_3
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 237
    :cond_4
    :goto_1
    return-void

    .line 190
    :pswitch_0
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onWaiting()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v5, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v3, v5}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 231
    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x3b9aca04

    if-eq v5, v6, :cond_7

    .line 232
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 194
    .end local v2    # "ex":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v3}, Lorg/xutils/common/task/TaskProxy;->getResult()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :pswitch_3
    sget-boolean v5, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    if-nez v0, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 203
    :cond_5
    const/4 v5, 0x0

    aget-object v4, v0, v5

    check-cast v4, Ljava/lang/Throwable;

    .line 204
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 209
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :pswitch_4
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v0}, Lorg/xutils/common/task/AbsTask;->onUpdate(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 213
    :pswitch_5
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$100(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 214
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/xutils/common/task/TaskProxy;->access$102(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 215
    sget-boolean v5, Lorg/xutils/common/task/TaskProxy$InternalHandler;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 216
    :cond_6
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v6

    const/4 v5, 0x0

    aget-object v5, v0, v5

    check-cast v5, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v6, v5}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_1

    .line 220
    :pswitch_6
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 221
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/xutils/common/task/TaskProxy;->access$302(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 222
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/common/task/AbsTask;->onFinished()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 233
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_7
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 234
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 188
    :pswitch_data_0
    .packed-switch 0x3b9aca01
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
