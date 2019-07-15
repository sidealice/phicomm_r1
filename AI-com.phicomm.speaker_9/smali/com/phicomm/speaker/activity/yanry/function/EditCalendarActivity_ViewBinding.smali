.class public Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "EditCalendarActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;",
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

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;Landroid/view/View;)V
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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'etSubject\'"

    .line 34
    const-class v1, Landroid/widget/EditText;

    const v2, 0x7f09009c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    const-string v0, "field \'tvDate\'"

    .line 35
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09027e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    const-string v0, "field \'tvTime\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fb

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    const-string v0, "field \'tvRingtone\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    const-string v0, "field \'tvVolume\'"

    .line 38
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090307

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvVolume:Landroid/widget/TextView;

    const-string v0, "method \'selectDate\'"

    const v1, 0x7f090024

    .line 39
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->b:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectTime\'"

    const v1, 0x7f090028

    .line 47
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->c:Landroid/view/View;

    .line 49
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectRingtone\'"

    const v1, 0x7f090026

    .line 55
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->d:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'setVolume\'"

    const v1, 0x7f090029

    .line 63
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->e:Landroid/view/View;

    .line 65
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'save\'"

    const v1, 0x7f0902a1

    .line 71
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->f:Landroid/view/View;

    .line 73
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'delete\'"

    const v1, 0x7f09027f

    .line 79
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->g:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$6;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'back\'"

    const v1, 0x7f090252

    .line 87
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->h:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding$7;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;

    .line 100
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 102
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->etSubject:Landroid/widget/EditText;

    .line 103
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvDate:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvTime:Landroid/widget/TextView;

    .line 105
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvRingtone:Landroid/widget/TextView;

    .line 106
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity;->tvVolume:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->b:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->c:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->d:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->e:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->f:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->g:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCalendarActivity_ViewBinding;->h:Landroid/view/View;

    return-void
.end method
