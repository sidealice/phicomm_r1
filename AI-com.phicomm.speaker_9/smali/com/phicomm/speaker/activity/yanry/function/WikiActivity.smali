.class public Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "WikiActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/base/BaseActivity;",
        "Lcom/phicomm/speaker/b/g<",
        "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field tvEnglish:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902aa
    .end annotation
.end field

.field tvHistory:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field tvHoliday:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field tvPeople:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ad
    .end annotation
.end field

.field tvProperNoun:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902ae
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902af
    .end annotation
.end field

.field tvWeather:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, 0x7f0f0129

    .line 43
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->e(I)V

    .line 44
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Lcom/phicomm/speaker/b/g;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003f

    .line 38
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->setContentView(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvWeather:Landroid/widget/TextView;

    const v1, 0x7f0f029f

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvTime:Landroid/widget/TextView;

    const v1, 0x7f0f029e

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvPeople:Landroid/widget/TextView;

    const v1, 0x7f0f029c

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHoliday:Landroid/widget/TextView;

    const v1, 0x7f0f029b

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvEnglish:Landroid/widget/TextView;

    const v1, 0x7f0f0299

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvHistory:Landroid/widget/TextView;

    const v1, 0x7f0f029a

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->tvProperNoun:Landroid/widget/TextView;

    const v1, 0x7f0f029d

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/WikiActivity;->a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 49
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->b(Lcom/phicomm/speaker/b/g;)V

    .line 50
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
