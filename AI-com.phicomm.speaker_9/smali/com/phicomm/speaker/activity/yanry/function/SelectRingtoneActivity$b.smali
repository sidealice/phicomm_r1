.class Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;
.super Lcom/phicomm/speaker/e/c/b;
.source "SelectRingtoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 109
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->j()V

    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 102
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-virtual {p2}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->j()V

    const-string p2, "\u8bd5\u542c\u7ed3\u679c: %s"

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090025

    if-eq p1, v0, :cond_1

    const v0, 0x7f090027

    if-eq p1, v0, :cond_0

    const v0, 0x7f090058

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ringtone"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->finish()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->i()V

    .line 92
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object p1

    const-class v0, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/a/b;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/phicomm/speaker/e/b;->c(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    :cond_2
    :goto_0
    return-void
.end method
