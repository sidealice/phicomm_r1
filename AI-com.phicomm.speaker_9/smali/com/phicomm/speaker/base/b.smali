.class public Lcom/phicomm/speaker/base/b;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# instance fields
.field protected a:Lcom/phicomm/speaker/presenter/b/f;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/phicomm/speaker/base/b;->b:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/base/b;->a:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/base/b;->a:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/f;->b()V

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/phicomm/speaker/base/b;->a:Lcom/phicomm/speaker/presenter/b/f;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/base/b;->a:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/presenter/b/f;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/phicomm/speaker/base/b;->b:Z

    return-void
.end method
