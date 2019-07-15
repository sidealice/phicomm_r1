.class Lcom/phicomm/speaker/presenter/d$5$1;
.super Ljava/lang/Object;
.source "DeviceInfoPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/d$5;->a(Ljava/lang/String;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/d$5;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/d$5;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/d$5$1;->a:Lcom/phicomm/speaker/presenter/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "DeviceInfoPresenter"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindUnisoundDevice onSuccess stateCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/presenter/d$5$1$1;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/presenter/d$5$1$1;-><init>(Lcom/phicomm/speaker/presenter/d$5$1;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/e/d;->c(Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    const-string v0, "DeviceInfoPresenter"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unBindUnisoundDevice onFail stateCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$5$1;->a:Lcom/phicomm/speaker/presenter/d$5;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/d$5;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->m(Lcom/phicomm/speaker/presenter/d;)V

    .line 209
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$5$1;->a:Lcom/phicomm/speaker/presenter/d$5;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/d$5;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/d$5$1;->a:Lcom/phicomm/speaker/presenter/d$5;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/d$5;->b:Lcom/phicomm/speaker/presenter/d;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/d;->b(Lcom/phicomm/speaker/presenter/d;)Lcom/phicomm/speaker/presenter/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/d;->c()V

    :cond_0
    return-void
.end method
