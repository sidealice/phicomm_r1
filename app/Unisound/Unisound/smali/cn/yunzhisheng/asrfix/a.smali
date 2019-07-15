.class Lcn/yunzhisheng/asrfix/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/asrfix/JniAsrFix;

.field private b:Lcom/unisound/sdk/w;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asrfix/JniAsrFix;Lcom/unisound/sdk/w;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcn/yunzhisheng/asrfix/a;->b:Lcom/unisound/sdk/w;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Recognizer.loadModel Reset thread start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Recognizer.loadModel Reset thread start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0, v8}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->w()Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z

    :goto_0
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(Lcn/yunzhisheng/asrfix/JniAsrFix;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 v1, 0x5df

    invoke-static {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;I)I

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c(Lcn/yunzhisheng/asrfix/JniAsrFix;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/unisound/sdk/u;->a(I)V

    :goto_1
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v0, v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v0, v0, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v1, v1, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v2, v2, Lcn/yunzhisheng/asrfix/JniAsrFix;->B:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Recognizer.loadModel reseting "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v4, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const-string v5, ""

    invoke-static {v4, v0, v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 v5, 0x5dd

    invoke-static {v4, v5}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;I)I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;

    move-result-object v0

    iget-object v4, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v4}, Lcn/yunzhisheng/asrfix/JniAsrFix;->c(Lcn/yunzhisheng/asrfix/JniAsrFix;)I

    move-result v4

    invoke-interface {v0, v4}, Lcom/unisound/sdk/u;->a(I)V

    const-string v0, "wakeup"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;

    move-result-object v0

    const/16 v1, 0xc21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-interface {v0, v1, v2}, Lcom/unisound/sdk/u;->a(II)V

    :goto_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Recognizer.loadModel reset ok"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "command"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->b:Lcom/unisound/sdk/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;

    move-result-object v0

    const/16 v1, 0x46a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-interface {v0, v1, v2}, Lcom/unisound/sdk/u;->a(II)V

    goto :goto_2

    :cond_1
    const-string v0, "Recognizer.loadModel no cmd type error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v4, "command"

    if-ne v4, v1, :cond_3

    iget-object v1, p0, Lcn/yunzhisheng/asrfix/a;->b:Lcom/unisound/sdk/w;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-static {v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->d(Lcn/yunzhisheng/asrfix/JniAsrFix;)Lcom/unisound/sdk/u;

    move-result-object v1

    const/16 v2, 0x514

    const v4, -0xf812

    invoke-interface {v1, v2, v4}, Lcom/unisound/sdk/u;->b(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognizer.loadModel reset error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(Lcn/yunzhisheng/asrfix/JniAsrFix;Z)Z

    iget-object v0, p0, Lcn/yunzhisheng/asrfix/a;->a:Lcn/yunzhisheng/asrfix/JniAsrFix;

    const/16 v1, 0x5dd

    invoke-static {v0, v1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Lcn/yunzhisheng/asrfix/JniAsrFix;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    const-wide/16 v0, 0x32

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Recognizer.loadModel Reset thread stop"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Recognizer.loadModel Reset thread stop"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    return-void
.end method
