.class public Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "ReminderActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;Landroid/view/View;)V
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

    const-string v0, "field \'tabLayout\'"

    .line 18
    const-class v1, Landroid/support/design/widget/TabLayout;

    const v2, 0x7f090222

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const-string v0, "field \'viewPager\'"

    .line 19
    const-class v1, Lcom/phicomm/speaker/views/LazyViewPager;

    const v2, 0x7f090318

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/views/LazyViewPager;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->viewPager:Lcom/phicomm/speaker/views/LazyViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;

    .line 25
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 28
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->viewPager:Lcom/phicomm/speaker/views/LazyViewPager;

    return-void
.end method
