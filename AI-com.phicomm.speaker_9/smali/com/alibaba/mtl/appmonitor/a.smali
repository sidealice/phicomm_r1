.class Lcom/alibaba/mtl/appmonitor/a;
.super Ljava/lang/Object;
.source "BackgroundTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/a$a;
    }
.end annotation


# static fields
.field private static j:Z = false

.field private static l:Z = false


# instance fields
.field private b:Landroid/app/Application;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/a;->b:Landroid/app/Application;

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .line 121
    invoke-static {p0}, Lcom/alibaba/mtl/log/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackgroundTrigger"

    const/4 v1, 0x2

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[checkRuningProcess]:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public static init(Landroid/app/Application;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 31
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->j:Z

    if-nez v0, :cond_2

    const-string v0, "BackgroundTrigger"

    const/4 v1, 0x1

    .line 32
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "init BackgroundTrigger"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/a;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    .line 34
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a;-><init>(Landroid/app/Application;)V

    .line 35
    sget-boolean v2, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    if-eqz v2, :cond_0

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object p0

    const/4 v2, 0x4

    const-wide/32 v3, 0xea60

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    goto :goto_0

    .line 38
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 40
    new-instance v2, Lcom/alibaba/mtl/appmonitor/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, v0}, Lcom/alibaba/mtl/appmonitor/a$a;-><init>(Lcom/alibaba/mtl/appmonitor/a;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 42
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->j:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "BackgroundTrigger"

    const/4 v1, 0x1

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[bg check]"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/a;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/mtl/log/e/b;->b(Landroid/content/Context;)Z

    move-result v0

    .line 55
    iget-boolean v1, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    if-eq v1, v0, :cond_3

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a;->k:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/d/j;->a()Lcom/alibaba/mtl/appmonitor/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/d/j;->k()V

    .line 59
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 60
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->c()I

    move-result v4

    invoke-static {v2, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/a;->m()V

    goto :goto_2

    .line 64
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a/f;->a()[Lcom/alibaba/mtl/appmonitor/a/f;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, v0, v3

    .line 65
    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/a/f;->d()I

    move-result v4

    invoke-static {v2, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/mtl/appmonitor/a/f;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitorDelegate;->triggerUpload()V

    .line 68
    invoke-static {}, Lcom/alibaba/mtl/log/a;->l()V

    .line 71
    :cond_3
    :goto_2
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    :cond_4
    return-void
.end method
