.class Lcom/phicomm/speaker/presenter/s$5;
.super Lcom/phicomm/speaker/net/a/a;
.source "UserInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/s;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->j(Lcom/phicomm/speaker/presenter/s;)V

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->k(Lcom/phicomm/speaker/presenter/s;)V

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$5;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/r;->c()V

    :cond_0
    return-void
.end method
