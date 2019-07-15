.class public Lcom/phicomm/speaker/fragment/FunctionFragment;
.super Lcom/phicomm/speaker/base/a;
.source "FunctionFragment.java"


# instance fields
.field tvMsgFm:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a3
    .end annotation
.end field

.field tvMsgMemo:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field tvMsgMusic:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a5
    .end annotation
.end field

.field tvMsgWiki:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0902a8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/phicomm/speaker/base/a;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 95
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/fragment/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMusic:Landroid/widget/TextView;

    const v1, 0x7f0f015c

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgFm:Landroid/widget/TextView;

    const v1, 0x7f0f0159

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgMemo:Landroid/widget/TextView;

    const v1, 0x7f0f015a

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/FunctionFragment;->tvMsgWiki:Landroid/widget/TextView;

    const v1, 0x7f0f0163

    invoke-static {v1, p1}, Lcom/phicomm/speaker/f/a/j;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b008f

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const-string v0, "\u5c0f\u8baf\u5c0f\u8baf"

    .line 44
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method enterAlarm()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900d5
        }
    .end annotation

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->a(I)V

    return-void
.end method

.method enterCalendar()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900e3
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->a(I)V

    return-void
.end method

.method enterCountdown()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900ef
        }
    .end annotation

    const/4 v0, 0x2

    .line 91
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->a(I)V

    return-void
.end method

.method enterFm()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900fe
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method enterMemo()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010a
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method enterMusic()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09010d
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method enterWiki()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090145
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/fragment/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/phicomm/speaker/base/a;->onDestroy()V

    return-void
.end method
