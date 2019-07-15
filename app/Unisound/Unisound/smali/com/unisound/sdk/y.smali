.class public Lcom/unisound/sdk/y;
.super Lcom/unisound/sdk/z;


# static fields
.field private static final f:I = 0x32


# instance fields
.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/unisound/sdk/z;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Z)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()[B
    .locals 5

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/y;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unisound/sdk/y;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x32

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    new-array v1, v1, [B

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
