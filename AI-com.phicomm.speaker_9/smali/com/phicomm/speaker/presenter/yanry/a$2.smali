.class Lcom/phicomm/speaker/presenter/yanry/a$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "CustomWakeNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/device/WakeupWordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/phicomm/speaker/presenter/yanry/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    const-string v0, "get score fail: %s."

    const/4 v1, 0x1

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v1, Lcom/phicomm/speaker/presenter/yanry/e;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/yanry/e;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$2;I)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method protected a(ILcom/unisound/lib/device/WakeupWordBean;)V
    .locals 2

    .line 67
    invoke-virtual {p2}, Lcom/unisound/lib/device/WakeupWordBean;->getWordDetail()Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/lib/device/WakeupWordBean$WakeupWordDetail;->getScore()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    new-instance v0, Lcom/phicomm/speaker/presenter/yanry/d;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->a:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/phicomm/speaker/presenter/yanry/d;-><init>(Lcom/phicomm/speaker/presenter/yanry/a$2;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    return-void
.end method

.method protected bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p2, Lcom/unisound/lib/device/WakeupWordBean;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a$2;->a(ILcom/unisound/lib/device/WakeupWordBean;)V

    return-void
.end method

.method final synthetic a(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-le p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v3, v2, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(ZI)V

    if-eqz v2, :cond_1

    .line 75
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/a;->b(Lcom/phicomm/speaker/presenter/yanry/a;Ljava/lang/String;)V

    return v1

    :cond_1
    return v0
.end method

.method final synthetic b(I)Z
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a$2;->b:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(I)V

    const/4 p1, 0x1

    return p1
.end method
