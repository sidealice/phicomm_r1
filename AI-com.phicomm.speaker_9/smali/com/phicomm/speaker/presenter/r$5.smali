.class Lcom/phicomm/speaker/presenter/r$5;
.super Lcom/phicomm/speaker/net/a/b;
.source "UserDefinedQuesAnsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/r;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/SensitiveSentenceBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/r;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/SensitiveSentenceBean;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->j(Lcom/phicomm/speaker/presenter/r;)V

    .line 210
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/q;->a(Lcom/phicomm/speaker/bean/SensitiveSentenceBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 206
    check-cast p1, Lcom/phicomm/speaker/bean/SensitiveSentenceBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/r$5;->a(Lcom/phicomm/speaker/bean/SensitiveSentenceBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->k(Lcom/phicomm/speaker/presenter/r;)V

    .line 218
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$5;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
