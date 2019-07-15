.class public Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "SpeakerRebootActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/SpeakerRebootActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/SpeakerRebootActivity;Landroid/view/View;)V
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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'rlTitle\'"

    .line 23
    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0901ea

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->rlTitle:Landroid/widget/RelativeLayout;

    const-string v0, "field \'tvHint\'"

    .line 24
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090292

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvHint:Landroid/widget/TextView;

    const-string v0, "field \'ivSpeakerReboot\'"

    .line 25
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09012f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivSpeakerReboot:Landroid/widget/ImageView;

    const-string v0, "field \'ivRebootResult\'"

    .line 26
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090116

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivRebootResult:Landroid/widget/ImageView;

    const-string v0, "field \'tvSure\' and method \'clickSure\'"

    const v1, 0x7f0902f9

    .line 27
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'tvSure\'"

    .line 28
    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvSure:Landroid/widget/TextView;

    .line 29
    iput-object p2, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;->b:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerRebootActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;

    .line 41
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 43
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->rlTitle:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvHint:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivSpeakerReboot:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->ivRebootResult:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity;->tvSure:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerRebootActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
