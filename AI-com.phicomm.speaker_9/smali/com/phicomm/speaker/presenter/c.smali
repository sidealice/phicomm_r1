.class public Lcom/phicomm/speaker/presenter/c;
.super Lcom/phicomm/speaker/base/b;
.source "CloudAccountPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/presenter/b/c;

.field private d:Lcom/phicomm/speaker/model/c;

.field private e:Lcom/phicomm/speaker/manager/a;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/c;->c:Lcom/phicomm/speaker/presenter/b/c;

    .line 47
    new-instance p1, Lcom/phicomm/speaker/model/c;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/c;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    .line 48
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/c;->c:Lcom/phicomm/speaker/presenter/b/c;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    const-string v1, "CLOUD_ACCOUNT_UID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    const-string v1, "ACCESS_TOKEN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    const-string v1, "REFRESH_TOKEN"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    const-string v1, "REFRESH_TOKEN_EXPIRE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    const-string v1, "LOGIN_TIMESTAMP"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic j(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic k(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/c;->i()V

    return-void
.end method

.method static synthetic l(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic m(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic n(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic o(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic p(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic q(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic r(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic s(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic t(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic u(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic v(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic w(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic x(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method

.method static synthetic y(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/c;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 148
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/c$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/c$5;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v0, 0x7f0f0139

    .line 89
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/phicomm/speaker/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/phicomm/speaker/presenter/c$4;

    invoke-direct {v7, p0, p1}, Lcom/phicomm/speaker/presenter/c$4;-><init>(Lcom/phicomm/speaker/presenter/c;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/phicomm/speaker/model/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const v0, 0x7f0f0139

    .line 269
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 270
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v8, "0"

    new-instance v9, Lcom/phicomm/speaker/presenter/c$9;

    invoke-direct {v9, p0}, Lcom/phicomm/speaker/presenter/c$9;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v9}, Lcom/phicomm/speaker/model/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const v0, 0x7f0f0139

    .line 220
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/c$7;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/c$7;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/phicomm/speaker/model/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0f0139

    .line 291
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 292
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/c$10;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/c$10;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/phicomm/speaker/model/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const v0, 0x7f0f0139

    .line 312
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 313
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/phicomm/speaker/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "4098901"

    new-instance v10, Lcom/phicomm/speaker/presenter/c$11;

    invoke-direct {v10, p0}, Lcom/phicomm/speaker/presenter/c$11;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v10}, Lcom/phicomm/speaker/model/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public c()V
    .locals 8

    const v0, 0x7f0f0139

    .line 55
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 56
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    const-string v2, "4098901"

    const-string v3, "18477428B0BA1B19DCC7E8DD1D65BCB8"

    const-string v5, "code"

    const-string v6, "write"

    new-instance v7, Lcom/phicomm/speaker/presenter/c$1;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/presenter/c$1;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/phicomm/speaker/model/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v0, 0x7f0f0139

    .line 335
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 336
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/phicomm/speaker/f/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/phicomm/speaker/presenter/c$2;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/presenter/c$2;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    const/4 v3, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/phicomm/speaker/model/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 184
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->e()V

    const/4 v0, 0x4

    .line 185
    sput v0, Lcom/phicomm/speaker/PhApplication;->b:I

    const-string v0, "DataChannel"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unisound initUnisound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/phicomm/speaker/PhApplication;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0f0135

    .line 193
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 194
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/c$6;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/c$6;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method public f()V
    .locals 3

    const v0, 0x7f0f0139

    .line 247
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/c;->a(I)V

    .line 248
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/phicomm/speaker/presenter/c$8;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/presenter/c$8;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c;->d:Lcom/phicomm/speaker/model/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/manager/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/c;->e:Lcom/phicomm/speaker/manager/a;

    invoke-virtual {v2}, Lcom/phicomm/speaker/manager/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    new-instance v4, Lcom/phicomm/speaker/presenter/c$3;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/presenter/c$3;-><init>(Lcom/phicomm/speaker/presenter/c;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/model/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/c;->c:Lcom/phicomm/speaker/presenter/b/c;

    .line 377
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/c;->a:Lcom/phicomm/speaker/presenter/b/f;

    return-void
.end method
