.class public Lcom/phicomm/speaker/presenter/q;
.super Lcom/phicomm/speaker/base/b;
.source "UpdatePresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/k;

.field private d:Lcom/phicomm/speaker/presenter/b/p;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/p;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/q;->d:Lcom/phicomm/speaker/presenter/b/p;

    .line 27
    new-instance p1, Lcom/phicomm/speaker/model/k;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/k;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/q;->c:Lcom/phicomm/speaker/model/k;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/q;)Lcom/phicomm/speaker/presenter/b/p;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/q;->d:Lcom/phicomm/speaker/presenter/b/p;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 6

    .line 31
    invoke-static {}, Lcom/phicomm/speaker/f/b;->c()I

    move-result v3

    .line 32
    invoke-static {}, Lcom/phicomm/speaker/f/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "BZHCA"

    :cond_0
    move-object v4, v0

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/q;->c:Lcom/phicomm/speaker/model/k;

    const/4 v1, 0x3

    const-string v2, "2015100021"

    new-instance v5, Lcom/phicomm/speaker/presenter/q$1;

    invoke-direct {v5, p0}, Lcom/phicomm/speaker/presenter/q$1;-><init>(Lcom/phicomm/speaker/presenter/q;)V

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/model/k;->a(ILjava/lang/String;ILjava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
