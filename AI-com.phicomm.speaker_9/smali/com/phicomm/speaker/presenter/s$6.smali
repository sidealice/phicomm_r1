.class Lcom/phicomm/speaker/presenter/s$6;
.super Lcom/phicomm/speaker/net/a/a;
.source "UserInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 188
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->l(Lcom/phicomm/speaker/presenter/s;)V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->m(Lcom/phicomm/speaker/presenter/s;)V

    .line 200
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/s$6;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/r;->b()V

    :cond_0
    return-void
.end method
