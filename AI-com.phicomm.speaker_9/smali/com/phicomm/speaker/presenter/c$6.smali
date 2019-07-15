.class Lcom/phicomm/speaker/presenter/c$6;
.super Ljava/lang/Object;
.source "CloudAccountPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->l(Lcom/phicomm/speaker/presenter/c;)V

    .line 198
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/c;->c()V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->m(Lcom/phicomm/speaker/presenter/c;)V

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$6;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/c;->c()V

    :cond_0
    return-void
.end method
