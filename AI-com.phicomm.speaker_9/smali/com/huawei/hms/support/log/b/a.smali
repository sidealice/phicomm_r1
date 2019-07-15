.class public abstract Lcom/huawei/hms/support/log/b/a;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private c:Lcom/huawei/hms/support/log/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/support/log/b/a;-><init>(Ljava/lang/String;Lcom/huawei/hms/support/log/b/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/support/log/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/support/log/b/a;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/hms/support/log/b/a;->b:Z

    iput-object p2, p0, Lcom/huawei/hms/support/log/b/a;->c:Lcom/huawei/hms/support/log/b/b;

    return-void
.end method

.method private f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->a()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 0

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->e()V

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->c()V

    return-void
.end method

.method private h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b()Z
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/support/log/b/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/support/log/b/a;->c:Lcom/huawei/hms/support/log/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/support/log/b/a;->c:Lcom/huawei/hms/support/log/b/b;

    invoke-interface {v0, p0}, Lcom/huawei/hms/support/log/b/b;->a(Lcom/huawei/hms/support/log/b/a;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/huawei/hms/support/log/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :catch_0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/huawei/hms/support/log/b/a;->a:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/support/log/b/a;->h()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto :goto_1

    :catch_1
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/b/a;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/huawei/hms/support/log/b/a;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/b/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
