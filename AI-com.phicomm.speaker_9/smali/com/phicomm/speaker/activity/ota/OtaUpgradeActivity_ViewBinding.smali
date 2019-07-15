.class public Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "OtaUpgradeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;Landroid/view/View;)V
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'tvUpgradeHint\'"

    .line 18
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090294

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->tvUpgradeHint:Landroid/widget/TextView;

    const-string v0, "field \'ivUpgrade\'"

    .line 19
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09013c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->ivUpgrade:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;

    .line 25
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->tvUpgradeHint:Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/phicomm/speaker/activity/ota/OtaUpgradeActivity;->ivUpgrade:Landroid/widget/ImageView;

    return-void
.end method
