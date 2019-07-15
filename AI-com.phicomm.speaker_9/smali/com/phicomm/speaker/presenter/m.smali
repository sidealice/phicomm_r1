.class public Lcom/phicomm/speaker/presenter/m;
.super Lcom/phicomm/speaker/base/b;
.source "PhiLinkPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/i;

.field private d:Lcom/phicomm/speaker/presenter/b/m;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/m;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 28
    new-instance v0, Lcom/phicomm/speaker/presenter/m$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/m$1;-><init>(Lcom/phicomm/speaker/presenter/m;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 38
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/m;->d:Lcom/phicomm/speaker/presenter/b/m;

    .line 39
    new-instance p1, Lcom/phicomm/speaker/model/i;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/i;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m;->c:Lcom/phicomm/speaker/model/i;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/m;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/m;)Lcom/phicomm/speaker/presenter/b/m;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/m;->d:Lcom/phicomm/speaker/presenter/b/m;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/m;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/m;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/m;)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/m;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 4

    const v0, 0x7f0f0133

    .line 91
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/m;->a(I)V

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->c:Lcom/phicomm/speaker/model/i;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->getMac()Ljava/lang/String;

    move-result-object v1

    const-string v2, "R1"

    new-instance v3, Lcom/phicomm/speaker/presenter/m$3;

    invoke-direct {v3, p0, p1}, Lcom/phicomm/speaker/presenter/m$3;-><init>(Lcom/phicomm/speaker/presenter/m;Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/model/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhiLinkDevice Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->d:Lcom/phicomm/speaker/presenter/b/m;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->d:Lcom/phicomm/speaker/presenter/b/m;

    const-string v1, "0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5165\u7f51\u5931\u8d25Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/presenter/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/m;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/m;->c:Lcom/phicomm/speaker/model/i;

    new-instance v1, Lcom/phicomm/speaker/presenter/m$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/m$2;-><init>(Lcom/phicomm/speaker/presenter/m;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/i;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
