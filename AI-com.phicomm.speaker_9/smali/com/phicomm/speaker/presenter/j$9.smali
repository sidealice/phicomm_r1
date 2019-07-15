.class Lcom/phicomm/speaker/presenter/j$9;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->a(Z)V
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
.field final synthetic a:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/i;->b(I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 174
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/j$9;->a:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$9;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
