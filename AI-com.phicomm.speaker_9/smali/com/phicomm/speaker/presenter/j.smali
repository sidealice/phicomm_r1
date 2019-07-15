.class public Lcom/phicomm/speaker/presenter/j;
.super Ljava/lang/Object;
.source "MediaPresenter.java"


# instance fields
.field private a:Lcom/phicomm/speaker/model/h;

.field private b:Lcom/phicomm/speaker/presenter/b/i;

.field private c:Lcom/phicomm/speaker/presenter/b/g;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/content/DialogInterface$OnDismissListener;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/phicomm/speaker/presenter/j$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/j$1;-><init>(Lcom/phicomm/speaker/presenter/j;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/j;->i:Landroid/content/DialogInterface$OnDismissListener;

    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    .line 66
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    .line 67
    new-instance p1, Lcom/phicomm/speaker/model/h;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/h;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    return-void
.end method

.method private a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/j;->h:Z

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    invoke-interface {v1, v0, p1}, Lcom/phicomm/speaker/presenter/b/g;->a(ILandroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/presenter/b/g;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/j;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/j;->h:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/j;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/j;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/j;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/j;->d()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/j;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/j;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/j;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/j;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/j;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/phicomm/speaker/presenter/j;->f:I

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/j;->h:Z

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/g;->b()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/j;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/phicomm/speaker/presenter/j;->g:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/j;->h:Z

    return-void
.end method

.method final synthetic a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    const/16 v0, -0x271c

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/i;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->i:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 443
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/j$2;-><init>(Lcom/phicomm/speaker/presenter/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->i:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$13;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/presenter/j$13;-><init>(Lcom/phicomm/speaker/presenter/j;I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;IZLcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->i:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$12;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/presenter/j$12;-><init>(Lcom/phicomm/speaker/presenter/j;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/i;->e()V

    .line 134
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j;->j:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$8;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/presenter/j$8;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 164
    new-instance p1, Lcom/phicomm/speaker/presenter/k;

    invoke-direct {p1, p0}, Lcom/phicomm/speaker/presenter/k;-><init>(Lcom/phicomm/speaker/presenter/j;)V

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v0, Lcom/phicomm/speaker/presenter/j$9;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/j$9;-><init>(Lcom/phicomm/speaker/presenter/j;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/h;->a(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 601
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 602
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$6;-><init>(Lcom/phicomm/speaker/presenter/j;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/h;->a([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/j;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->i:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 474
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/j$3;-><init>(Lcom/phicomm/speaker/presenter/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/h;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$10;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$10;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->b(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 646
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 647
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$7;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$7;-><init>(Lcom/phicomm/speaker/presenter/j;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/h;->b([Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 686
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    .line 690
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/j;->c:Lcom/phicomm/speaker/presenter/b/g;

    return-void
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$11;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$11;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->c(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$14;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$14;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->d(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$15;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$15;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->e(Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 503
    iget v0, p0, Lcom/phicomm/speaker/presenter/j;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/presenter/j;->f:I

    .line 504
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j;->d:Z

    if-nez v0, :cond_1

    .line 505
    iput-boolean v1, p0, Lcom/phicomm/speaker/presenter/j;->d:Z

    const/4 v0, 0x0

    .line 506
    iput v0, p0, Lcom/phicomm/speaker/presenter/j;->f:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$4;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->f(Lcom/phicomm/speaker/e/c/b;)V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 549
    iget v0, p0, Lcom/phicomm/speaker/presenter/j;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/presenter/j;->g:I

    .line 550
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/j;->e:Z

    if-nez v0, :cond_1

    .line 551
    iput-boolean v1, p0, Lcom/phicomm/speaker/presenter/j;->e:Z

    const/4 v0, 0x0

    .line 552
    iput v0, p0, Lcom/phicomm/speaker/presenter/j;->g:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 554
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/j;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->a:Lcom/phicomm/speaker/model/h;

    new-instance v1, Lcom/phicomm/speaker/presenter/j$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/j$5;-><init>(Lcom/phicomm/speaker/presenter/j;Z)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/h;->g(Lcom/phicomm/speaker/e/c/b;)V

    :cond_1
    return-void
.end method

.method public onPlayContentResultEvent(Lcom/phicomm/speaker/e/b/j;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 191
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/j;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 196
    invoke-static {}, Lcom/phicomm/speaker/presenter/p;->b()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j;->b:Lcom/phicomm/speaker/presenter/b/i;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/j;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/i;->a(I)V

    :cond_2
    return-void
.end method
