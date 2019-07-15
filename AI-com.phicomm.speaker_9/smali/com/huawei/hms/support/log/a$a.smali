.class public Lcom/huawei/hms/support/log/a$a;
.super Lcom/huawei/hms/support/log/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/huawei/hms/support/log/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "logger"

    invoke-direct {p0, v0}, Lcom/huawei/hms/support/log/b/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/log/a$a;->a:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/log/a$b;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/a$a;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/support/log/a$a;->a:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/support/log/a$b;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/huawei/hms/support/log/a$b;->a:Lcom/huawei/hms/support/log/e;

    invoke-static {v1}, Lcom/huawei/hms/support/log/e;->a(Lcom/huawei/hms/support/log/e;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/huawei/hms/support/log/a$b;->b:Lcom/huawei/hms/support/log/f;

    iget-object v0, v0, Lcom/huawei/hms/support/log/a$b;->a:Lcom/huawei/hms/support/log/e;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/support/log/f;->b(Lcom/huawei/hms/support/log/e;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/huawei/hms/support/log/a$b;->a:Lcom/huawei/hms/support/log/e;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method
