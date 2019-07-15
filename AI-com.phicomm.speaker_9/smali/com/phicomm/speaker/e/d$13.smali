.class Lcom/phicomm/speaker/e/d$13;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/callback/HttpDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V
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
.field final synthetic a:Lcom/phicomm/speaker/e/c/d;

.field final synthetic b:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$13;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$13;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "UnisoundManager"

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stateCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$13;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$13;->a:Lcom/phicomm/speaker/e/c/d;

    const/4 p2, 0x1

    const-string v0, "no devices"

    invoke-interface {p1, p2, v0}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailed(I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$13;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$13;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onResult(ILjava/lang/Object;)V
    .locals 0

    .line 344
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/e/d$13;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
