.class public Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "VoiceCommandDetailActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:I

.field private b:Lcom/phicomm/speaker/presenter/t;

.field devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008a
    .end annotation
.end field

.field ivIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090101
    .end annotation
.end field

.field lvCommands:Lcom/phicomm/speaker/views/MyListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09017a
    .end annotation
.end field

.field scrollView:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fa
    .end annotation
.end field

.field tvDetailTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090280
    .end annotation
.end field

.field tvVoiceCommandDetail:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090306
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 66
    new-instance v0, Lcom/phicomm/speaker/presenter/t;

    new-instance v1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity$1;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/t;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/s;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->b:Lcom/phicomm/speaker/presenter/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f00ae

    .line 58
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->e(I)V

    .line 60
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->d()V

    .line 61
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "commandId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->a:I

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/t;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0062

    .line 53
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->j()V

    return-void
.end method

.method public devNoneContent()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09008a
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->b:Lcom/phicomm/speaker/presenter/t;

    iget v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->a:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/t;->b(I)V

    return-void
.end method
