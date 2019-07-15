.class final Lorg/xutils/common/task/b$b;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    const-class v0, Lorg/xutils/common/task/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 165
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/common/task/b$1;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lorg/xutils/common/task/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 172
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "msg must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xutils/common/task/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/xutils/common/task/b;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xutils/common/task/b$a;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/xutils/common/task/b$a;

    .line 180
    iget-object v1, v0, Lorg/xutils/common/task/b$a;->a:Lorg/xutils/common/task/b;

    .line 181
    iget-object v0, v0, Lorg/xutils/common/task/b$a;->b:[Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v1, :cond_3

    .line 184
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "msg.obj not instanceof TaskProxy"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v2, 0x1

    .line 188
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 220
    :pswitch_0
    invoke-static {v1}, Lorg/xutils/common/task/b;->d(Lorg/xutils/common/task/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 221
    :cond_4
    invoke-static {v1, v2}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/b;Z)Z

    .line 222
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    goto/16 :goto_1

    .line 213
    :pswitch_1
    invoke-static {v1}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/b;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 214
    :cond_5
    invoke-static {v1, v2}, Lorg/xutils/common/task/b;->a(Lorg/xutils/common/task/b;Z)Z

    .line 215
    sget-boolean v3, Lorg/xutils/common/task/b$b;->a:Z

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_6
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    aget-object v0, v0, v4

    check-cast v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v3, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_1

    .line 209
    :pswitch_2
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v0}, Lorg/xutils/common/task/AbsTask;->onUpdate(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 202
    :pswitch_3
    sget-boolean v3, Lorg/xutils/common/task/b$b;->a:Z

    if-nez v3, :cond_7

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_7
    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Throwable;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 198
    :pswitch_4
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v1}, Lorg/xutils/common/task/b;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 194
    :pswitch_5
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    goto :goto_1

    .line 190
    :pswitch_6
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onWaiting()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 230
    sget-object v3, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v1, v3}, Lorg/xutils/common/task/b;->a(Lorg/xutils/common/task/AbsTask$State;)V

    .line 231
    iget p1, p1, Landroid/os/Message;->what:I

    const v3, 0x3b9aca04

    if-eq p1, v3, :cond_8

    .line 232
    invoke-static {v1}, Lorg/xutils/common/task/b;->c(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_1

    .line 233
    :cond_8
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 234
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3b9aca01
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
