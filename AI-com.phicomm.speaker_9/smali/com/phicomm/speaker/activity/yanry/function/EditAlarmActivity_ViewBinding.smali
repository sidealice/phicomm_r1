.class public Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "EditAlarmActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;Landroid/view/View;)V
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

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'wvHour\'"

    .line 32
    const-class v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x7f090322

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const-string v0, "field \'wvMinute\'"

    .line 33
    const-class v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x7f090323

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const-string v0, "field \'tvRepeat\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRepeat:Landroid/widget/TextView;

    const-string v0, "field \'tvRingtone\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    const-string v0, "field \'tvDate\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvDate:Landroid/widget/TextView;

    const-string v0, "field \'tvVolume\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090307

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvVolume:Landroid/widget/TextView;

    const-string v0, "method \'selectRepeat\'"

    const v1, 0x7f09014e

    .line 38
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->b:Landroid/view/View;

    .line 40
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectRingtone\'"

    const v1, 0x7f09014f

    .line 46
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->c:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectVolume\'"

    const v1, 0x7f090156

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->d:Landroid/view/View;

    .line 56
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'save\'"

    const v1, 0x7f0902a1

    .line 62
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->e:Landroid/view/View;

    .line 64
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'delete\'"

    const v1, 0x7f09027f

    .line 70
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->f:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'back\'"

    const v1, 0x7f090252

    .line 78
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 79
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->g:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding$6;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    .line 91
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 93
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 94
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 95
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRepeat:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvRingtone:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvDate:Landroid/widget/TextView;

    .line 98
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvVolume:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->b:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->c:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->d:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->e:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->f:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity_ViewBinding;->g:Landroid/view/View;

    return-void
.end method
