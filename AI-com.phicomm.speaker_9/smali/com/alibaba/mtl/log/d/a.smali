.class public Lcom/alibaba/mtl/log/d/a;
.super Ljava/lang/Object;
.source "UploadEngine.java"


# static fields
.field static a:Lcom/alibaba/mtl/log/d/a;


# instance fields
.field private A:I

.field private E:Z

.field protected z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/mtl/log/d/a;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/d/a;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/d/a;->a:Lcom/alibaba/mtl/log/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/log/d/a;->z:J

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/a;->E:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/d/a;)J
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Lcom/alibaba/mtl/log/d/a;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/mtl/log/d/a;->a:Lcom/alibaba/mtl/log/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/mtl/log/d/a;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/alibaba/mtl/log/d/a;->E:Z

    return p0
.end method

.method private c()J
    .locals 6

    const-string v0, "UploadEngine"

    const/4 v1, 0x4

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "UTDC.bBackground:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-boolean v2, Lcom/alibaba/mtl/log/a;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "AppInfoUtil.isForeground(UTDC.getContext()) "

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/mtl/log/e/b;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/b;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/alibaba/mtl/log/a;->o:Z

    .line 73
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->o:Z

    .line 74
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->b()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/mtl/log/d/a;->A:I

    int-to-long v2, v2

    add-long v4, v0, v2

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/mtl/log/d/a;->A:I

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 80
    :goto_0
    iput-wide v4, p0, Lcom/alibaba/mtl/log/d/a;->z:J

    .line 81
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xbb8

    .line 82
    iput-wide v0, p0, Lcom/alibaba/mtl/log/d/a;->z:J

    .line 84
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/mtl/log/d/a;->z:J

    return-wide v0
.end method


# virtual methods
.method public J()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/alibaba/mtl/log/d/a;->A:I

    if-nez v0, :cond_0

    const/16 v0, 0x1b58

    .line 59
    iput v0, p0, Lcom/alibaba/mtl/log/d/a;->A:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/alibaba/mtl/log/d/a;->A:I

    :goto_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    .line 26
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/a;->E:Z

    .line 27
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/a;->c()J

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    invoke-static {}, Lcom/alibaba/mtl/log/d/b;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v2

    new-instance v3, Lcom/alibaba/mtl/log/d/a$1;

    invoke-direct {v3, p0}, Lcom/alibaba/mtl/log/d/a$1;-><init>(Lcom/alibaba/mtl/log/d/a;)V

    iget-wide v4, p0, Lcom/alibaba/mtl/log/d/a;->z:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 66
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/d/a;->E:Z

    .line 67
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method
