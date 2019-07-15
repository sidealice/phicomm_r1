.class Lcom/phicomm/speaker/presenter/o$3;
.super Lcom/phicomm/speaker/e/c/b;
.source "SpeakerSetPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/o;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/o;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/o;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->e(Lcom/phicomm/speaker/presenter/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/o;->a(Lcom/phicomm/speaker/presenter/o;)V

    .line 158
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$3;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->d(Lcom/phicomm/speaker/presenter/o;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/o;->c(Z)V

    :cond_0
    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/o$3;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
