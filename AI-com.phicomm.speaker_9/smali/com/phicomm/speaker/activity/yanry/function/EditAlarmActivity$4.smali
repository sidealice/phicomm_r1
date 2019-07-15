.class Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;
.super Lcom/phicomm/speaker/e/c/b;
.source "EditAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->delete()V
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
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 206
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->j()V

    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3

    const-string p2, "action result: %s."

    const/4 v0, 0x1

    .line 195
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->j()V

    .line 197
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "isDeleteOperation"

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->setResult(ILandroid/content/Intent;)V

    .line 200
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->finish()V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
