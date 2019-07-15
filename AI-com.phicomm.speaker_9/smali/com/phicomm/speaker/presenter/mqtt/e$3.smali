.class Lcom/phicomm/speaker/presenter/mqtt/e$3;
.super Ljava/lang/Object;
.source "RecoveryPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/e;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->d(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    .line 175
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->e(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/presenter/mqtt/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->e(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/presenter/mqtt/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/mqtt/e$a;->a()V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->d(Lcom/phicomm/speaker/presenter/mqtt/e;)V

    .line 183
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->e(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/presenter/mqtt/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/e$3;->a:Lcom/phicomm/speaker/presenter/mqtt/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/mqtt/e;->e(Lcom/phicomm/speaker/presenter/mqtt/e;)Lcom/phicomm/speaker/presenter/mqtt/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/mqtt/e$a;->a()V

    :cond_0
    return-void
.end method
