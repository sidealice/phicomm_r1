.class public Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "EditCountdownActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;",
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


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;Landroid/view/View;)V
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

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'wvHour\'"

    .line 30
    const-class v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x7f090322

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const-string v0, "field \'wvMinute\'"

    .line 31
    const-class v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x7f090323

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const-string v0, "field \'wvSecond\'"

    .line 32
    const-class v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v2, 0x7f090324

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const-string v0, "field \'tvRingtone\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902d0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    const-string v0, "field \'tvVolume\'"

    .line 34
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090307

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvVolume:Landroid/widget/TextView;

    const-string v0, "method \'save\'"

    const v1, 0x7f0902a1

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->b:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'delete\'"

    const v1, 0x7f09027f

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->c:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'back\'"

    const v1, 0x7f090252

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->d:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectRingtone\'"

    const v1, 0x7f09014f

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->e:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'selectVolume\'"

    const v1, 0x7f090156

    .line 67
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->f:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding$5;-><init>(Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;

    .line 80
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 82
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvHour:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 83
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvMinute:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 84
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->wvSecond:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 85
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvRingtone:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity;->tvVolume:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->b:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->c:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->d:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->e:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditCountdownActivity_ViewBinding;->f:Landroid/view/View;

    return-void
.end method
