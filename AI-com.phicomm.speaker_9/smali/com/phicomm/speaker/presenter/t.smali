.class public Lcom/phicomm/speaker/presenter/t;
.super Lcom/phicomm/speaker/base/b;
.source "VoiceCommandPresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/n;

.field private d:Lcom/phicomm/speaker/presenter/b/s;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/s;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/t;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 27
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/t;->d:Lcom/phicomm/speaker/presenter/b/s;

    .line 28
    new-instance p1, Lcom/phicomm/speaker/model/n;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/n;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/t;->c:Lcom/phicomm/speaker/model/n;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/t;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/t;->d:Lcom/phicomm/speaker/presenter/b/s;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/t;->a()V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/t;->a()V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/t;->a()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0133

    .line 37
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/t;->a(I)V

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/t;->c:Lcom/phicomm/speaker/model/n;

    new-instance v0, Lcom/phicomm/speaker/presenter/t$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/t$1;-><init>(Lcom/phicomm/speaker/presenter/t;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/phicomm/speaker/model/n;->a(IILcom/phicomm/speaker/net/a/a;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const v0, 0x7f0f0133

    .line 62
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/t;->a(I)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t;->c:Lcom/phicomm/speaker/model/n;

    new-instance v1, Lcom/phicomm/speaker/presenter/t$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/t$2;-><init>(Lcom/phicomm/speaker/presenter/t;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/model/n;->a(ILcom/phicomm/speaker/net/a/a;)V

    return-void
.end method
