.class Lcom/phicomm/speaker/presenter/s$4;
.super Lcom/phicomm/speaker/net/a/b;
.source "UserInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/s;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/FxResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/s;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/FxResponse;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->h(Lcom/phicomm/speaker/presenter/s;)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/r;->a(Lcom/phicomm/speaker/bean/FxResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/phicomm/speaker/bean/FxResponse;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/s$4;->a(Lcom/phicomm/speaker/bean/FxResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->i(Lcom/phicomm/speaker/presenter/s;)V

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$4;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
