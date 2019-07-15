.class public Lcom/phicomm/speaker/presenter/n;
.super Lcom/phicomm/speaker/base/b;
.source "SmartHomePresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/j;

.field private d:Lcom/phicomm/speaker/presenter/b/n;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/n;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/n;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 27
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/n;->d:Lcom/phicomm/speaker/presenter/b/n;

    .line 28
    new-instance p1, Lcom/phicomm/speaker/model/j;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/j;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/n;->c:Lcom/phicomm/speaker/model/j;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/n;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/n;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/n;)Lcom/phicomm/speaker/presenter/b/n;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/n;->d:Lcom/phicomm/speaker/presenter/b/n;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/n;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/n;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/n;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/n;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/n;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/n;->b:Z

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0133

    .line 37
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/n;->a(I)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/n;->c:Lcom/phicomm/speaker/model/j;

    new-instance v0, Lcom/phicomm/speaker/presenter/n$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/n$1;-><init>(Lcom/phicomm/speaker/presenter/n;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/j;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
