.class Lcom/unisound/sdk/bl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iput-object p2, p0, Lcom/unisound/sdk/bl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/bl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/sdk/bl;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/sdk/bl;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/unisound/sdk/bl;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/unisound/sdk/bl;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    invoke-static {v2}, Lcom/unisound/sdk/bg;->d(Lcom/unisound/sdk/bg;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iget-object v4, p0, Lcom/unisound/sdk/bl;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisound/sdk/bl;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/unisound/sdk/bl;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/unisound/sdk/bl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/bl;->e:Ljava/lang/String;

    const-string v3, "wakeup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    invoke-static {v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v1, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iget-object v3, p0, Lcom/unisound/sdk/bl;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/sdk/bl;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisound/sdk/bl;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bl;->e:Ljava/lang/String;

    const-string v1, "wakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    const v1, -0xf834

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;I)V

    :cond_0
    :goto_2
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    invoke-static {v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/16 v0, -0x66

    if-ne v3, v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v4, p0, Lcom/unisound/sdk/bl;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iget-object v4, p0, Lcom/unisound/sdk/bl;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/unisound/sdk/bl;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/unisound/sdk/bl;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compile vocab error: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v4, p0, Lcom/unisound/sdk/bl;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compile vocab error: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Lcom/unisound/sdk/bg;

    const v1, -0xf810

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
