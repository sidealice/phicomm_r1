.class Lcom/phicomm/speaker/presenter/b$1;
.super Lcom/phicomm/speaker/net/a/c;
.source "BannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/c<",
        "Lcom/phicomm/speaker/bean/BannerBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/b;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/b;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MyBanner"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError code= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->b(Lcom/phicomm/speaker/presenter/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/BannerBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MyBanner"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->c(Lcom/phicomm/speaker/presenter/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/b;->a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/b;->a(Ljava/util/List;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/b$1;->a:Lcom/phicomm/speaker/presenter/b;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/b;->a(Lcom/phicomm/speaker/presenter/b;)Lcom/phicomm/speaker/presenter/b/b;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "list empty"

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
