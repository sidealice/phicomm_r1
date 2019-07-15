.class Lcom/xiaomi/mipush/sdk/y;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/x;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/x;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-class v1, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/s;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/s;->c(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    const-string v3, "disable_syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {p1, v0, v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "enable_syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/s;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/y;->a:Lcom/xiaomi/mipush/sdk/x;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/x;->a(Lcom/xiaomi/mipush/sdk/x;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/s;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
