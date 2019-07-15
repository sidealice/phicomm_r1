.class Lcom/phicomm/speaker/presenter/r$3;
.super Lcom/phicomm/speaker/net/a/a;
.source "UserDefinedQuesAnsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/r;->a(JLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/r;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/r;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->f(Lcom/phicomm/speaker/presenter/r;)V

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/r;->g(Lcom/phicomm/speaker/presenter/r;)V

    .line 164
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/r$3;->a:Lcom/phicomm/speaker/presenter/r;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/r;->b(Lcom/phicomm/speaker/presenter/r;)Lcom/phicomm/speaker/presenter/b/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/q;->a()V

    :cond_0
    return-void
.end method
