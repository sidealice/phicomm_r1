.class Lcom/phicomm/speaker/e/d$6;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/callback/HttpDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/callback/HttpDataCallback<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field final synthetic b:Lcom/phicomm/speaker/e/c/b;

.field final synthetic c:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/b;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$6;->c:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$6;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    iput-object p3, p0, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    if-eqz p2, :cond_2

    .line 638
    iget-object p2, p0, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/e/c/b;->onFailed(I)V

    goto :goto_1

    .line 621
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$6;->c:Lcom/phicomm/speaker/e/d;

    iget-object v1, p0, Lcom/phicomm/speaker/e/d$6;->a:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    new-instance v2, Lcom/phicomm/speaker/e/d$6$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/phicomm/speaker/e/d$6$1;-><init>(Lcom/phicomm/speaker/e/d$6;ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Lcom/phicomm/speaker/e/c/d;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onFailed(I)V
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$6;->b:Lcom/phicomm/speaker/e/c/b;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/e/c/b;->onFailed(I)V

    return-void
.end method

.method public synthetic onResult(ILjava/lang/Object;)V
    .locals 0

    .line 617
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/d$6;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
