.class public Lcom/phicomm/speaker/presenter/l;
.super Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;
.source "OtaPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/presenter/b/l;

.field private d:Lcom/phicomm/speaker/presenter/b/f;

.field private e:Landroid/os/Handler;

.field private final f:I

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/presenter/b/l;Lcom/phicomm/speaker/presenter/b/f;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/mqtt/OtaUpdatePresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 30
    iput p1, p0, Lcom/phicomm/speaker/presenter/l;->f:I

    .line 32
    new-instance p1, Lcom/phicomm/speaker/presenter/l$1;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/l$1;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l;->g:Ljava/lang/Runnable;

    .line 42
    new-instance p1, Lcom/phicomm/speaker/presenter/l$2;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/l$2;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/l;->h:Ljava/lang/Runnable;

    .line 54
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/l;->c:Lcom/phicomm/speaker/presenter/b/l;

    .line 55
    iput-object p3, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/l;)Lcom/phicomm/speaker/presenter/b/l;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/l;->c:Lcom/phicomm/speaker/presenter/b/l;

    return-object p0
.end method

.method private b()Landroid/os/Handler;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/l;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/l;->g()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/l;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/l;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/l;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/l;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/presenter/b/f;->a(I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/f;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->c:Lcom/phicomm/speaker/presenter/b/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/l;->c:Lcom/phicomm/speaker/presenter/b/l;

    .line 90
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/l;->d:Lcom/phicomm/speaker/presenter/b/f;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/l;->f()V

    .line 132
    new-instance v0, Lcom/phicomm/speaker/presenter/l$4;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/l$4;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/l;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    new-instance p2, Lcom/phicomm/speaker/presenter/l$6;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/l$6;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Lcom/phicomm/speaker/c/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 105
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/l;->f()V

    .line 106
    new-instance v6, Lcom/phicomm/speaker/presenter/l$3;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/presenter/l$3;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 157
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/l;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/l;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/l;->g:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    new-instance v0, Lcom/phicomm/speaker/presenter/l$5;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/l$5;-><init>(Lcom/phicomm/speaker/presenter/l;)V

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/l;->a(Ljava/lang/String;Lcom/phicomm/speaker/c/g;)V

    return-void
.end method
