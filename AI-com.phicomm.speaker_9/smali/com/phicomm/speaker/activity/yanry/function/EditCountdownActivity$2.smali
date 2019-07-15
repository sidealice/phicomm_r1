.class Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;
.super Lcom/phicomm/speaker/e/c/b;
.source "EditCountdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a()V
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
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->j()V

    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    const-string p2, "action result: %s."

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->j()V

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "isDeleteOperation"

    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a:Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->finish()V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
