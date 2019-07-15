.class Lcom/alibaba/mtl/appmonitor/b;
.super Ljava/lang/Object;
.source "CleanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J = 0x493e0L

.field private static a:Lcom/alibaba/mtl/appmonitor/b; = null

.field private static j:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static destroy()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    return-void
.end method

.method static init()V
    .locals 6

    .line 30
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    if-nez v0, :cond_0

    const-string v0, "CleanTask"

    const/4 v1, 0x1

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "init TimeoutEventManager"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lcom/alibaba/mtl/appmonitor/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    .line 33
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    const/4 v2, 0x5

    sget-object v3, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    sget-wide v4, Lcom/alibaba/mtl/appmonitor/b;->a:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    .line 34
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/b;->j:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CleanTask"

    const/4 v1, 0x1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clean TimeoutEvent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/e;->a()Lcom/alibaba/mtl/appmonitor/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/a/e;->h()V

    .line 48
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    sget-object v1, Lcom/alibaba/mtl/appmonitor/b;->a:Lcom/alibaba/mtl/appmonitor/b;

    sget-wide v2, Lcom/alibaba/mtl/appmonitor/b;->a:J

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    return-void
.end method
