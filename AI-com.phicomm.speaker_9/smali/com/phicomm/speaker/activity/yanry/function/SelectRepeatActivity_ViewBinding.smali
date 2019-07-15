.class public Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "SelectRepeatActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'cbFriday\'"

    .line 17
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f090059

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbFriday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbMonday\'"

    .line 18
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbMonday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbTuesday\'"

    .line 19
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbTuesday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbWednesday\'"

    .line 20
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbWednesday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbThursday\'"

    .line 21
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbThursday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbSaturday\'"

    .line 22
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSaturday:Landroid/widget/CheckBox;

    const-string v0, "field \'cbSunday\'"

    .line 23
    const-class v1, Landroid/widget/CheckBox;

    const v2, 0x7f09005c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSunday:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;

    .line 29
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbFriday:Landroid/widget/CheckBox;

    .line 32
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbMonday:Landroid/widget/CheckBox;

    .line 33
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbTuesday:Landroid/widget/CheckBox;

    .line 34
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbWednesday:Landroid/widget/CheckBox;

    .line 35
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbThursday:Landroid/widget/CheckBox;

    .line 36
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSaturday:Landroid/widget/CheckBox;

    .line 37
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSunday:Landroid/widget/CheckBox;

    return-void
.end method
