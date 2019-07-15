.class public Lcom/phicomm/speaker/presenter/s;
.super Lcom/phicomm/speaker/base/b;
.source "UserInfoPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/m;

.field private d:Lcom/phicomm/speaker/presenter/b/r;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/r;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 40
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/s;->d:Lcom/phicomm/speaker/presenter/b/r;

    .line 41
    new-instance p1, Lcom/phicomm/speaker/model/m;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/m;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/s;->d:Lcom/phicomm/speaker/presenter/b/r;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic i(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic j(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic k(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic l(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method

.method static synthetic m(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/s;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V
    .locals 2

    const v0, 0x7f0f0138

    .line 123
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 124
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/phicomm/speaker/presenter/s$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$3;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/m;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0138

    .line 72
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    new-instance v1, Lcom/phicomm/speaker/presenter/s$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$1;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/phicomm/speaker/model/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0139

    .line 165
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    new-instance v1, Lcom/phicomm/speaker/presenter/s$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$5;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/phicomm/speaker/model/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0139

    .line 144
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    invoke-static {p1}, Lcom/phicomm/speaker/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/phicomm/speaker/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/phicomm/speaker/presenter/s$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$4;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/phicomm/speaker/model/m;->b(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0139

    .line 187
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    new-instance v1, Lcom/phicomm/speaker/presenter/s$6;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$6;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/phicomm/speaker/model/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    const v0, 0x7f0f0138

    .line 93
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/s;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s;->c:Lcom/phicomm/speaker/model/m;

    new-instance v1, Lcom/phicomm/speaker/presenter/s$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/s$2;-><init>(Lcom/phicomm/speaker/presenter/s;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/m;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
