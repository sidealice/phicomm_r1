.class Lcom/phicomm/speaker/presenter/yanry/a/g$a;
.super Landroid/view/TouchDelegate;
.source "ReminderPresenter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/yanry/a/g;

.field private b:Lcom/unisound/lib/time/bean/AlarmReminder;

.field private c:Z

.field private d:Lcom/phicomm/speaker/e/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/phicomm/speaker/e/c/b<",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/graphics/Rect;Landroid/view/View;Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    .line 382
    invoke-direct {p0, p2, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 383
    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 384
    new-instance p2, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;

    invoke-direct {p2, p0, p1, p4}, Lcom/phicomm/speaker/presenter/yanry/a/g$a$1;-><init>(Lcom/phicomm/speaker/presenter/yanry/a/g$a;Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)V

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->d:Lcom/phicomm/speaker/e/c/b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/yanry/a/g$a;)Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->c:Z

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 411
    instance-of v0, p1, Landroid/widget/CheckBox;

    const/4 v1, 0x2

    const v2, 0x508aca51

    const v3, 0x5897a51

    const v4, -0x1ee93f8e

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_6

    .line 412
    iput-boolean v7, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->c:Z

    .line 413
    check-cast p1, Landroid/widget/CheckBox;

    .line 414
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v0, p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setOpen(Z)V

    if-eqz p1, :cond_5

    .line 417
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "countDown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v7

    goto :goto_1

    :cond_2
    const-string v0, "reminder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 419
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 421
    aget-object v2, p1, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 422
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 423
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_4

    const/4 p1, 0x5

    .line 425
    invoke-virtual {v0, p1, v6}, Ljava/util/Calendar;->add(II)V

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    const-string v1, "%tF"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setDate(Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTimeStamp(Ljava/lang/String;)V

    .line 438
    :cond_5
    :goto_2
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->d:Lcom/phicomm/speaker/e/c/b;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 439
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object p1

    const v0, 0x7f0f0139

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->b(I)V

    goto/16 :goto_6

    :cond_6
    const/4 p1, 0x0

    .line 443
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v4, :cond_9

    if-eq v8, v3, :cond_8

    if-eq v8, v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "countDown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_8
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    goto :goto_4

    :cond_9
    const-string v1, "reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v6

    goto :goto_4

    :cond_a
    :goto_3
    move v1, v5

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 451
    :pswitch_2
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    goto :goto_5

    .line 448
    :pswitch_3
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;

    goto :goto_5

    .line 445
    :pswitch_4
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    :goto_5
    if-eqz p1, :cond_b

    .line 457
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/phicomm/speaker/presenter/yanry/a/g;Lcom/unisound/lib/time/bean/AlarmReminder;)Lcom/unisound/lib/time/bean/AlarmReminder;

    .line 458
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/fragment/ReminderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "reminder"

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x44

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/fragment/ReminderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const p2, 0x7f0f00a9

    .line 404
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 405
    invoke-interface {p2, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const p2, 0x7f0f004d

    .line 406
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->c:Z

    .line 466
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->b:Lcom/unisound/lib/time/bean/AlarmReminder;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->d:Lcom/phicomm/speaker/e/c/b;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a/g;->b(Lcom/unisound/lib/time/bean/AlarmReminder;Lcom/phicomm/speaker/e/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$a;->a:Lcom/phicomm/speaker/presenter/yanry/a/g;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/yanry/a/g;->c(Lcom/phicomm/speaker/presenter/yanry/a/g;)Lcom/phicomm/speaker/fragment/ReminderFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/fragment/ReminderFragment;->f()V

    :cond_0
    return p1
.end method
