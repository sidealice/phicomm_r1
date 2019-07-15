.class Lcom/phicomm/speaker/presenter/c$11;
.super Lcom/phicomm/speaker/net/a/a;
.source "CloudAccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 313
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->v(Lcom/phicomm/speaker/presenter/c;)V

    .line 317
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 324
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->w(Lcom/phicomm/speaker/presenter/c;)V

    .line 325
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$11;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/c;->a()V

    :cond_0
    return-void
.end method
