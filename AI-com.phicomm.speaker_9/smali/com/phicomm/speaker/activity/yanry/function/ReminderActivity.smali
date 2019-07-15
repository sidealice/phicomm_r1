.class public Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field tabLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090222
    .end annotation
.end field

.field viewPager:Lcom/phicomm/speaker/views/LazyViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090318
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0207

    .line 34
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->e(I)V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->viewPager:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/LazyViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    new-instance v0, Lcom/phicomm/speaker/model/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->viewPager:Lcom/phicomm/speaker/views/LazyViewPager;

    invoke-direct {v0, p0, v1, v2}, Lcom/phicomm/speaker/model/a/a;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/support/design/widget/TabLayout;Lcom/phicomm/speaker/views/LazyViewPager;)V

    const/16 v1, 0x1e

    const/16 v2, 0x14

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/model/a/a;->a(II)V

    const-string v1, "reminder"

    .line 39
    invoke-static {v1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->b(Ljava/lang/String;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v1

    const v2, 0x7f0f0124

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/model/a/a;->a(ILcom/phicomm/speaker/base/a;)V

    const-string v1, "alarm"

    .line 40
    invoke-static {v1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->b(Ljava/lang/String;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v1

    const v2, 0x7f0f0123

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/model/a/a;->a(ILcom/phicomm/speaker/base/a;)V

    const-string v1, "countDown"

    .line 41
    invoke-static {v1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->b(Ljava/lang/String;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v1

    const v2, 0x7f0f0125

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/model/a/a;->a(ILcom/phicomm/speaker/base/a;)V

    .line 42
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/a/a;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003c

    .line 29
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;->setContentView(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
