.class Lcom/phicomm/speaker/e/d$12$1;
.super Lcom/phicomm/speaker/net/a/a;
.source "UnisoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d$12;->onResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/d$12;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d$12;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$12$1;->a:Lcom/phicomm/speaker/e/d$12;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindHardDevice onError stateCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$12$1;->a:Lcom/phicomm/speaker/e/d$12;

    iget-object v0, v0, Lcom/phicomm/speaker/e/d$12;->g:Lcom/phicomm/speaker/e/c/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/phicomm/speaker/e/c/c;->a(IZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lokhttp3/Request;)V
    .locals 2

    const-string p1, "UnisoundManager"

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindHardDevice onSuccess refresh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$12$1;->a:Lcom/phicomm/speaker/e/d$12;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$12;->g:Lcom/phicomm/speaker/e/c/c;

    const-string p2, ""

    const/16 v0, 0xc8

    invoke-interface {p1, v0, p2}, Lcom/phicomm/speaker/e/c/c;->a(ILjava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$12$1;->a:Lcom/phicomm/speaker/e/d$12;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$12;->h:Lcom/phicomm/speaker/e/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/e/d;->b(Lcom/phicomm/speaker/e/c/d;)V

    .line 318
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/phicomm/speaker/a/q;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    return-void
.end method
