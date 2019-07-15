.class Lcom/xiaomi/channel/commonutils/c/h$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/channel/commonutils/c/h;

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaomi/channel/commonutils/c/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    const-string p1, "PackageProcessor"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/channel/commonutils/c/h$b;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/h;->a(Lcom/xiaomi/channel/commonutils/c/h;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/h;->a(Lcom/xiaomi/channel/commonutils/c/h;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->b(Lcom/xiaomi/channel/commonutils/c/h;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/channel/commonutils/c/h$b;

    invoke-static {v2, v3}, Lcom/xiaomi/channel/commonutils/c/h;->a(Lcom/xiaomi/channel/commonutils/c/h;Lcom/xiaomi/channel/commonutils/c/h$b;)Lcom/xiaomi/channel/commonutils/c/h$b;

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->c(Lcom/xiaomi/channel/commonutils/c/h;)Lcom/xiaomi/channel/commonutils/c/h$b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->d(Lcom/xiaomi/channel/commonutils/c/h;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/c/h;->c(Lcom/xiaomi/channel/commonutils/c/h;)Lcom/xiaomi/channel/commonutils/c/h$b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/c/h;->d(Lcom/xiaomi/channel/commonutils/c/h;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->c(Lcom/xiaomi/channel/commonutils/c/h;)Lcom/xiaomi/channel/commonutils/c/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/channel/commonutils/c/h$b;->b()V

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->d(Lcom/xiaomi/channel/commonutils/c/h;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/c/h;->c(Lcom/xiaomi/channel/commonutils/c/h;)Lcom/xiaomi/channel/commonutils/c/h$b;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/c/h;->d(Lcom/xiaomi/channel/commonutils/c/h;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->a(Lcom/xiaomi/channel/commonutils/c/h;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/channel/commonutils/c/h$a;->a:Lcom/xiaomi/channel/commonutils/c/h;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/c/h;->e(Lcom/xiaomi/channel/commonutils/c/h;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method
