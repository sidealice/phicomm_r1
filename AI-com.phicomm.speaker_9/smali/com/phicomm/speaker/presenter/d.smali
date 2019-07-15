.class public Lcom/phicomm/speaker/presenter/d;
.super Lcom/phicomm/speaker/base/b;
.source "DeviceInfoPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/d;

.field private d:Lcom/phicomm/speaker/presenter/b/d;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/d;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 52
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/d;->d:Lcom/phicomm/speaker/presenter/b/d;

    .line 53
    new-instance p1, Lcom/phicomm/speaker/model/d;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/d;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/d;->d:Lcom/phicomm/speaker/presenter/b/d;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic i(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic j(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic k(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic l(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic m(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic n(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic o(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic p(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method

.method static synthetic q(Lcom/phicomm/speaker/presenter/d;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/d;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V
    .locals 2

    const v0, 0x7f0f0138

    .line 134
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 135
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/d$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/d$4;-><init>(Lcom/phicomm/speaker/presenter/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 270
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/d$7;

    invoke-direct {v2, p0, p1}, Lcom/phicomm/speaker/presenter/d$7;-><init>(Lcom/phicomm/speaker/presenter/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/d;->c(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0f0138

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/d$1;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/presenter/d$1;-><init>(Lcom/phicomm/speaker/presenter/d;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/phicomm/speaker/model/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0138

    .line 225
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 227
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/presenter/d$6;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/d$6;-><init>(Lcom/phicomm/speaker/presenter/d;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/e;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0f0138

    .line 82
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/d$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/d$2;-><init>(Lcom/phicomm/speaker/presenter/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/phicomm/speaker/model/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    const v0, 0x7f0f0138

    .line 106
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/d$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/d$3;-><init>(Lcom/phicomm/speaker/presenter/d;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/d;->b(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0138

    .line 165
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/d;->a(I)V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/d;->c:Lcom/phicomm/speaker/model/d;

    new-instance v1, Lcom/phicomm/speaker/presenter/d$5;

    invoke-direct {v1, p0, p2}, Lcom/phicomm/speaker/presenter/d$5;-><init>(Lcom/phicomm/speaker/presenter/d;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
