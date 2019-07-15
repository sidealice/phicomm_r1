.class public Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "EditCountdownActivity.java"


# instance fields
.field private a:Lcom/unisound/lib/time/bean/AlarmReminder;

.field private b:Lcom/phicomm/speaker/presenter/mqtt/a;

.field private d:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;"
        }
    .end annotation
.end field

.field tvRingtone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field

.field tvVolume:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090307
    .end annotation
.end field

.field wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090322
    .end annotation
.end field

.field wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090323
    .end annotation
.end field

.field wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090324
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const v0, 0x7f0900dd

    .line 54
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090252

    .line 55
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00b7

    .line 56
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->e(I)V

    const v0, 0x7f0f020e

    .line 57
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->f(I)V

    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "reminder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/AlarmReminder;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    const-class v2, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/model/a/b;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v3}, Lcom/unisound/lib/time/bean/AlarmReminder;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/model/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setVisibleItemsCount(I)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setVisibleItemsCount(I)V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setVisibleItemsCount(I)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x41c26666    # 24.3f

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v2, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v3, "%02d"

    const/16 v4, 0x62

    invoke-direct {v2, v1, v4, v3}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v2, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v3, "%02d"

    const/16 v4, 0x3b

    invoke-direct {v2, v1, v4, v3}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v2, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v3, "%02d"

    invoke-direct {v2, v1, v4, v3}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getCountDownTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 74
    div-int/lit16 v2, v0, 0xe10

    .line 75
    rem-int/lit16 v3, v0, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 76
    rem-int/lit8 v0, v0, 0x3c

    .line 77
    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v4, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 78
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 79
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 81
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 94
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->d:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0036

    .line 49
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->setContentView(I)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->finish()V

    return-void
.end method

.method delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->i()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x46

    if-ne p1, p2, :cond_0

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    const-string p2, "ringtone"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method save()V
    .locals 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902a1
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f00f2

    .line 126
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/f/a/j;->a(Lcom/unisound/lib/time/bean/AlarmReminder;III)V

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v2}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v4}, Lcom/unisound/lib/time/bean/AlarmReminder;->getCountDownTime()I

    move-result v4

    int-to-long v4, v4

    add-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    const-class v1, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/model/a/b;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/model/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setAlarmName(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->d:Lcom/phicomm/speaker/e/c/b;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->i()V

    :cond_1
    return-void
.end method

.method selectRingtone()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09014f
        }
    .end annotation

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ringtone"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method selectVolume()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090156
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->b:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$4;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V

    :cond_0
    return-void
.end method
