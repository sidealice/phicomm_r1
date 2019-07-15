.class public Lcom/phicomm/speaker/presenter/r;
.super Lcom/phicomm/speaker/base/b;
.source "UserDefinedQuesAnsPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/l;

.field private d:Lcom/phicomm/speaker/presenter/b/q;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 31
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/r;->d:Lcom/phicomm/speaker/presenter/b/q;

    .line 32
    new-instance p1, Lcom/phicomm/speaker/model/l;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/l;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/r;->d:Lcom/phicomm/speaker/presenter/b/q;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic f(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic g(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic h(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic i(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic j(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method

.method static synthetic k(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/r;->a()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 6

    const-string v1, "selection"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/presenter/r;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(JLjava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0f0133

    .line 151
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/r;->a(I)V

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    new-instance v6, Lcom/phicomm/speaker/presenter/r$3;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/presenter/r$3;-><init>(Lcom/phicomm/speaker/presenter/r;)V

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/phicomm/speaker/model/l;->a(JLjava/util/List;Ljava/util/List;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0f0133

    .line 205
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/r;->a(I)V

    .line 206
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    new-instance v1, Lcom/phicomm/speaker/presenter/r$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/r$5;-><init>(Lcom/phicomm/speaker/presenter/r;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/l;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0f0133

    .line 122
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/r;->a(I)V

    .line 123
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    new-instance v7, Lcom/phicomm/speaker/presenter/r$2;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/presenter/r$2;-><init>(Lcom/phicomm/speaker/presenter/r;)V

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/phicomm/speaker/model/l;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public a(ZI)V
    .locals 7

    const-string v2, "selection"

    const/16 v4, 0x14

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/presenter/r;->a(ZLjava/lang/String;IIJ)V

    return-void
.end method

.method public a(ZJ)V
    .locals 7

    const-string v2, "my_custum"

    const/4 v3, 0x0

    const/16 v4, 0x14

    move-object v0, p0

    move v1, p1

    move-wide v5, p2

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/presenter/r;->a(ZLjava/lang/String;IIJ)V

    return-void
.end method

.method public a(ZLjava/lang/String;IIJ)V
    .locals 7

    if-eqz p1, :cond_0

    const p1, 0x7f0f0133

    .line 57
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/r;->a(I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    new-instance v6, Lcom/phicomm/speaker/presenter/r$1;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/presenter/r$1;-><init>(Lcom/phicomm/speaker/presenter/r;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/model/l;->a(Ljava/lang/String;IIJLcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    const v0, 0x7f0f0133

    .line 177
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/r;->a(I)V

    .line 178
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r;->c:Lcom/phicomm/speaker/model/l;

    new-instance v1, Lcom/phicomm/speaker/presenter/r$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/r$4;-><init>(Lcom/phicomm/speaker/presenter/r;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/phicomm/speaker/model/l;->a(JLcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
