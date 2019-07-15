.class public Lcom/phicomm/speaker/presenter/o;
.super Lcom/phicomm/speaker/base/b;
.source "SpeakerSetPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/presenter/b/o;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/o;Lcom/phicomm/speaker/presenter/b/f;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/phicomm/speaker/presenter/o;->f:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/phicomm/speaker/presenter/o;->g:I

    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/phicomm/speaker/presenter/o;->h:I

    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/phicomm/speaker/presenter/o;->i:I

    .line 60
    new-instance v0, Lcom/phicomm/speaker/presenter/o$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/o$1;-><init>(Lcom/phicomm/speaker/presenter/o;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/o;->l:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    .line 87
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/o;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/o;->d:Landroid/os/Handler;

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/o;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->e()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    return-object p0
.end method

.method private b(I)V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->f()V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/o;->k:Z

    .line 100
    iput p1, p0, Lcom/phicomm/speaker/presenter/o;->j:I

    .line 101
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o;->l:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p1, 0x7f0f00bb

    .line 102
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/o;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/o;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/phicomm/speaker/presenter/o;->j:I

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/o;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/o;->e:Z

    return p0
.end method

.method private e()V
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->g()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/o;->k:Z

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/o;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/o;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/o;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/o;->k:Z

    return p0
.end method

.method private f()V
    .locals 1

    .line 236
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 176
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/o;->b(I)V

    .line 177
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/o$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/o$4;-><init>(Lcom/phicomm/speaker/presenter/o;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/b;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 145
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/o;->e:Z

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/o;->b(I)V

    .line 147
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/o$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/o$3;-><init>(Lcom/phicomm/speaker/presenter/o;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/b;->a(ZLcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 207
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/o;->b(I)V

    .line 208
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/o$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/o$5;-><init>(Lcom/phicomm/speaker/presenter/o;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/b;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/o;->b(I)V

    .line 120
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/o$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/o$2;-><init>(Lcom/phicomm/speaker/presenter/o;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/b;->c(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 231
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->g()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    return-void
.end method

.method public onChangeTtsPlayerEvent(Lcom/phicomm/speaker/a/j;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->e()V

    .line 267
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/j;->a()I

    move-result p1

    if-nez p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/o;->a()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/o;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetDormantLampEvent(Lcom/phicomm/speaker/a/r;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->e()V

    .line 281
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/r;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    const-string v1, "0"

    invoke-virtual {p1}, Lcom/phicomm/speaker/a/r;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/o;->b(Z)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/o;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetDormantLampEvent(Lcom/phicomm/speaker/a/ac;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 249
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/o;->e()V

    .line 250
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ac;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/o;->e:Z

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/o;->a(Z)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ac;->a()I

    move-result v0

    const/16 v1, -0x1f5

    if-ne v0, v1, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ac;->a()I

    move-result p1

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o;->c:Lcom/phicomm/speaker/presenter/b/o;

    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/o;->e:Z

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/o;->c(Z)V

    :cond_2
    :goto_0
    return-void
.end method
