.class Lcom/unisound/common/bb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/unisound/common/bd;

.field final synthetic d:Lcom/unisound/common/ba;


# direct methods
.method constructor <init>(Lcom/unisound/common/ba;Ljava/util/concurrent/BlockingQueue;Landroid/content/Context;Lcom/unisound/common/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/bb;->d:Lcom/unisound/common/ba;

    iput-object p2, p0, Lcom/unisound/common/bb;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/unisound/common/bb;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/unisound/common/bb;->c:Lcom/unisound/common/bd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload uploadWakeup"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/bb;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/unisound/common/bb;->d:Lcom/unisound/common/ba;

    iget-object v2, p0, Lcom/unisound/common/bb;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/unisound/common/bb;->c:Lcom/unisound/common/bd;

    iget-object v4, p0, Lcom/unisound/common/bb;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v1, v2, v3, v4}, Lcom/unisound/common/ba;->a(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WakeupWordCacheAndUpload uploadWakeup error occur,save to cache!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/common/bb;->d:Lcom/unisound/common/ba;

    iget-object v2, p0, Lcom/unisound/common/bb;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/unisound/common/bb;->c:Lcom/unisound/common/bd;

    invoke-static {v1, v2, v3, v0}, Lcom/unisound/common/ba;->b(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload uploadWakeup success!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
