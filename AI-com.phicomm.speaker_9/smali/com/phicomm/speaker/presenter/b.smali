.class public Lcom/phicomm/speaker/presenter/b;
.super Lcom/phicomm/speaker/base/b;
.source "BannerPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/presenter/b/b;

.field private d:Lcom/phicomm/speaker/model/b;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/b;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 23
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/b;->c:Lcom/phicomm/speaker/presenter/b/b;

    .line 24
    new-instance p1, Lcom/phicomm/speaker/model/b;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/b;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/b;->d:Lcom/phicomm/speaker/model/b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/b;->c:Lcom/phicomm/speaker/presenter/b/b;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/b;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/b;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/b;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/b;->b:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b;->d:Lcom/phicomm/speaker/model/b;

    new-instance v1, Lcom/phicomm/speaker/presenter/b$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/b$1;-><init>(Lcom/phicomm/speaker/presenter/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/b;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
