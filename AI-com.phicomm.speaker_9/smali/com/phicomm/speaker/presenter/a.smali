.class public Lcom/phicomm/speaker/presenter/a;
.super Lcom/phicomm/speaker/base/b;
.source "AppPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/a;

.field private d:Lcom/phicomm/speaker/presenter/b/a;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/a;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 22
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/a;->d:Lcom/phicomm/speaker/presenter/b/a;

    .line 23
    new-instance p1, Lcom/phicomm/speaker/model/a;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/a;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/a;->c:Lcom/phicomm/speaker/model/a;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/a;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/a;)Lcom/phicomm/speaker/presenter/b/a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/a;->d:Lcom/phicomm/speaker/presenter/b/a;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/a;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/a;->a()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/a;->a(I)V

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a;->c:Lcom/phicomm/speaker/model/a;

    new-instance v1, Lcom/phicomm/speaker/presenter/a$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/a$1;-><init>(Lcom/phicomm/speaker/presenter/a;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/a;->a(Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a;->d:Lcom/phicomm/speaker/presenter/b/a;

    .line 49
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a;->a:Lcom/phicomm/speaker/presenter/b/f;

    return-void
.end method
