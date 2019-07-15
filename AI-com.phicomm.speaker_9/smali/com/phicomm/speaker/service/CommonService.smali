.class public Lcom/phicomm/speaker/service/CommonService;
.super Landroid/app/Service;
.source "CommonService.java"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Lcom/phicomm/speaker/model/c;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/phicomm/speaker/model/c;

    invoke-direct {v0}, Lcom/phicomm/speaker/model/c;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->b:Lcom/phicomm/speaker/model/c;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/phicomm/speaker/service/CommonService$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/service/CommonService$1;-><init>(Lcom/phicomm/speaker/service/CommonService;)V

    iput-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/service/CommonService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/phicomm/speaker/service/CommonService;->b()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/service/CommonService;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 63
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checkToken isBackGround"

    .line 64
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "checkToken"

    .line 67
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->b:Lcom/phicomm/speaker/model/c;

    new-instance v1, Lcom/phicomm/speaker/service/CommonService$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/service/CommonService$2;-><init>(Lcom/phicomm/speaker/service/CommonService;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/c;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    .line 81
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/service/CommonService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/service/CommonService;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/service/CommonService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/service/CommonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "onStartCommand"

    .line 50
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/phicomm/speaker/service/CommonService;->a()V

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
