.class public Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "EditCalendarActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/a;
.implements Lcom/phicomm/speaker/popup/i$a;


# instance fields
.field private a:Lcom/unisound/lib/time/bean/AlarmReminder;

.field private b:Lcom/phicomm/speaker/popup/b;

.field private d:Lcom/phicomm/speaker/popup/i;

.field private e:Lcom/phicomm/speaker/presenter/mqtt/a;

.field etSubject:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09009c
    .end annotation
.end field

.field private f:Lcom/phicomm/speaker/e/c/b;
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

.field tvRingtone:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field tvVolume:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090307
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    const v0, 0x7f0900dd

    .line 68
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090252

    .line 69
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00b6

    .line 70
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->e(I)V

    const v0, 0x7f0f020e

    .line 71
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->f(I)V

    .line 72
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "reminder"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/time/bean/AlarmReminder;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    const-string v2, ""

    const/16 v3, 0x64

    invoke-static {v3, v0, v2}, Lcom/phicomm/speaker/f/h;->a(ILandroid/widget/EditText;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    const-string v2, "%tF"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v5}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    const-string v2, "%tR"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v5}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    const-class v2, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/model/a/b;

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v4}, Lcom/unisound/lib/time/bean/AlarmReminder;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/model/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Lcom/phicomm/speaker/popup/b;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    const v2, 0x7f0f0217

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/popup/b;->a(I)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/popup/b;->a(Lcom/phicomm/speaker/c/a;)V

    .line 85
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {v2}, Lcom/phicomm/speaker/popup/b;->a()Lcom/phicomm/speaker/views/DatePickerView;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v4, v6, v8}, Lcom/phicomm/speaker/views/DatePickerView;->b(III)V

    const/16 v4, 0x32

    .line 88
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/phicomm/speaker/views/DatePickerView;->c(III)V

    .line 91
    new-instance v0, Lcom/phicomm/speaker/presenter/mqtt/a;

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v3, v1}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(ZLcom/phicomm/speaker/presenter/mqtt/a$a;)V

    .line 104
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->f:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    const-string v1, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(III)V
    .locals 3

    const-string v0, "%s-%02d-%02d"

    const/4 v1, 0x3

    .line 240
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0035

    .line 63
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->setContentView(I)V

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->finish()V

    return-void
.end method

.method delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->i()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x46

    if-ne p1, p2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    const-string p2, "ringtone"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method save()V
    .locals 5
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902a1
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00f0

    .line 181
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto/16 :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/x;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0f00f1

    .line 183
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto/16 :goto_0

    .line 185
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "%s %s"

    const/4 v2, 0x2

    .line 187
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setDate(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setLabel(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    const-class v1, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/model/a/b;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/model/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setAlarmName(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->i()V

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->f:Lcom/phicomm/speaker/e/c/b;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f0f00f2

    .line 197
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method selectDate()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090024
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/q;->b(Landroid/view/View;)Z

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->b:Lcom/phicomm/speaker/popup/b;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/b;->a(Landroid/view/View;)V

    return-void
.end method

.method selectRingtone()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090026
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ringtone"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method selectTime()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090028
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/q;->b(Landroid/view/View;)Z

    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->d:Lcom/phicomm/speaker/popup/i;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/phicomm/speaker/popup/i;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->d:Lcom/phicomm/speaker/popup/i;

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->d:Lcom/phicomm/speaker/popup/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/popup/i;->a(Lcom/phicomm/speaker/popup/i$a;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->a:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ":"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->d:Lcom/phicomm/speaker/popup/i;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/popup/i;->a(II)V

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->d:Lcom/phicomm/speaker/popup/i;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/popup/i;->a(Landroid/view/View;)V

    return-void
.end method

.method setVolume()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090029
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/phicomm/speaker/f/a/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->e:Lcom/phicomm/speaker/presenter/mqtt/a;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$3;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/phicomm/speaker/presenter/mqtt/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V

    :cond_0
    return-void
.end method
