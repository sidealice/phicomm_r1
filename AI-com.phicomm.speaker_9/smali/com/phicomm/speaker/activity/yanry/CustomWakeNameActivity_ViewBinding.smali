.class public Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "CustomWakeNameActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;Landroid/view/View;)V
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

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'etName\'"

    .line 22
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09009d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    const-string v0, "field \'vClear\' and method \'clearInput\'"

    const v1, 0x7f0900ea

    .line 23
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 24
    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->vClear:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;->b:Landroid/view/View;

    .line 26
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'layoutStar\'"

    .line 32
    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x7f090154

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    .line 38
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    .line 41
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->vClear:Landroid/view/View;

    .line 42
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
