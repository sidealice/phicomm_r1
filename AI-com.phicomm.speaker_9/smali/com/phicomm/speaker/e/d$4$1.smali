.class Lcom/phicomm/speaker/e/d$4$1;
.super Lcom/phicomm/speaker/e/c/b;
.source "UnisoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d$4;->a(ILjava/util/List;)V
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
.field final synthetic a:Lcom/phicomm/speaker/e/d$4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d$4;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$4$1;->a:Lcom/phicomm/speaker/e/d$4;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .line 506
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 507
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$4$1;->a:Lcom/phicomm/speaker/e/d$4;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$4;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v0, ""

    const/4 v1, -0x1

    invoke-interface {p1, v1, v0}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    return-void
.end method

.method protected a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 1

    .line 501
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$4$1;->a:Lcom/phicomm/speaker/e/d$4;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$4;->a:Lcom/phicomm/speaker/e/c/d;

    const-string p2, "no devices"

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 498
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/d$4$1;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
