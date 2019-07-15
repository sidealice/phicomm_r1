.class public Lcom/phicomm/speaker/device/ui/MainTestActivity;
.super Landroid/app/Activity;
.source "MainTestActivity.java"


# instance fields
.field btAlterMode:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a001c
        }
    .end annotation
.end field

.field btCollectMusic:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a001d
        }
    .end annotation
.end field

.field btEnterAsr:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a001e
        }
    .end annotation
.end field

.field btGetUnread:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a0020
        }
    .end annotation
.end field

.field btHistory:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a0021
        }
    .end annotation
.end field

.field btNightMode:Landroid/widget/Button;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0a001f
        }
    .end annotation
.end field

.field private isAlter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->isAlter:Z

    return-void
.end method

.method private changeAlterMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getButtonControler()Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->isAlter:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btAlterMode:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed\u8b66\u6212\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getButtonControler()Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->enterAlertMode(Z)V

    .line 59
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->isAlter:Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->btAlterMode:Landroid/widget/Button;

    const-string v1, "\u6253\u5f00\u8b66\u6212\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getButtonControler()Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->enterAlertMode(Z)V

    .line 63
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/ui/MainTestActivity;->isAlter:Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0a001c,
            0x7f0a001d,
            0x7f0a001e,
            0x7f0a001f,
            0x7f0a0020,
            0x7f0a0021
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/ui/MainTestActivity;->changeAlterMode()V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getButtonControler()Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->enterNightMode()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x7f0a001c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/ui/MainTestActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->unbind(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
