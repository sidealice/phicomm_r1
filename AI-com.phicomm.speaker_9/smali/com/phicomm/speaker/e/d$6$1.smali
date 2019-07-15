.class Lcom/phicomm/speaker/e/d$6$1;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d$6;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

.field final synthetic c:Lcom/phicomm/speaker/e/d$6;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d$6;ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$6$1;->c:Lcom/phicomm/speaker/e/d$6;

    iput p2, p0, Lcom/phicomm/speaker/e/d$6$1;->a:I

    iput-object p3, p0, Lcom/phicomm/speaker/e/d$6$1;->b:Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 624
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$6$1;->c:Lcom/phicomm/speaker/e/d$6;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    if-eqz p1, :cond_0

    .line 625
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$6$1;->c:Lcom/phicomm/speaker/e/d$6;

    iget-object p1, p1, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    iget p2, p0, Lcom/phicomm/speaker/e/d$6$1;->a:I

    iget-object v0, p0, Lcom/phicomm/speaker/e/d$6$1;->b:Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/e/c/b;->onResult(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .line 631
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$6$1;->c:Lcom/phicomm/speaker/e/d$6;

    iget-object p2, p2, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    if-eqz p2, :cond_0

    .line 632
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$6$1;->c:Lcom/phicomm/speaker/e/d$6;

    iget-object p2, p2, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/e/c/b;->onFailed(I)V

    :cond_0
    return-void
.end method
