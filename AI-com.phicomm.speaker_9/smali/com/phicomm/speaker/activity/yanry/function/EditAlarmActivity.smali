.class public Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "EditAlarmActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/unisound/lib/time/bean/AlarmReminder;

.field private d:Lcom/phicomm/speaker/presenter/mqtt/a;

.field private e:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;"
        }
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027e
    .end annotation
.end field

.field tvRepeat:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902cf
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .line 118
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a:Ljava/lang/String;

    const-string v0, "OFF"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvDate:Landroid/widget/TextView;

    const-string v3, "%s\u5e74%s\u6708%s\u65e5"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v6, v0, v5

    aput-object v6, v4, v5

    aget-object v5, v0, v1

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aget-object v0, v0, v5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvDate:Landroid/widget/TextView;

    const v2, 0x7f0f0064

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRepeat:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/a/j;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const v0, 0x7f0900dd

    .line 60
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090252

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00b5

    .line 62
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->e(I)V

    const v0, 0x7f0f020e

    .line 63
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->f(I)V

    .line 64
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "reminder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/AlarmReminder;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getRepeatDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    const-class v2, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/model/a/b;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v3}, Lcom/unisound/lib/time/bean/AlarmReminder;->getAlarmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/model/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setVisibleItemsCount(I)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setVisibleItemsCount(I)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x41c26666    # 24.3f

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v2, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v3, "%02d"

    const/16 v4, 0x17

    invoke-direct {v2, v1, v4, v3}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v2, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v3, "%02d"

    const/16 v4, 0x3b

    invoke-direct {v2, v1, v4, v3}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v3, v2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    :cond_0
    const/4 v2, 0x1

    .line 80
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_1

    .line 82
    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v3, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 85
    :cond_1
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 98
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->e:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0034

    .line 55
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->setContentView(I)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->finish()V

    return-void
.end method

.method delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->i()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    const-string p2, "ringtone"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "repeat"

    .line 164
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method save()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902a1
        }
    .end annotation

    .line 177
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 180
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setRepeatDate(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    const-class v1, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/model/a/b;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/model/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setAlarmName(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->e:Lcom/phicomm/speaker/e/c/b;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->i()V

    :cond_0
    return-void
.end method

.method selectRepeat()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09014e
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "repeat"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x45

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method selectRingtone()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09014f
        }
    .end annotation

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ringtone"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method selectVolume()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090156
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->d:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$3;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V

    :cond_0
    return-void
.end method
