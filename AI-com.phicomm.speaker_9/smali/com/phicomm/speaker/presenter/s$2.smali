.class Lcom/phicomm/speaker/presenter/s$2;
.super Lcom/phicomm/speaker/net/a/b;
.source "UserInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/s;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/AccountBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/s;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/s;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/AccountBean;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->d(Lcom/phicomm/speaker/presenter/s;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountBean;->getData()Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/r;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/s$2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "0"

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/presenter/s$2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Lcom/phicomm/speaker/bean/AccountBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/s$2;->a(Lcom/phicomm/speaker/bean/AccountBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->e(Lcom/phicomm/speaker/presenter/s;)V

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/s$2;->a:Lcom/phicomm/speaker/presenter/s;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/s;->b(Lcom/phicomm/speaker/presenter/s;)Lcom/phicomm/speaker/presenter/b/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
