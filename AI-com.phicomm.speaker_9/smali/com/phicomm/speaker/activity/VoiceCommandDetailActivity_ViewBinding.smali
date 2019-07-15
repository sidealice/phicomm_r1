.class public Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "VoiceCommandDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'devNoneContent\' and method \'devNoneContent\'"

    const v1, 0x7f09008a

    .line 25
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'devNoneContent\'"

    .line 26
    const-class v3, Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/DefaultExceptionView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 27
    iput-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;->b:Landroid/view/View;

    .line 28
    new-instance v1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'scrollView\'"

    .line 34
    const-class v1, Landroid/widget/ScrollView;

    const v2, 0x7f0901fa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v0, "field \'ivIcon\'"

    .line 35
    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f090101

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->ivIcon:Landroid/widget/ImageView;

    const-string v0, "field \'tvDetailTitle\'"

    .line 36
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090280

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvDetailTitle:Landroid/widget/TextView;

    const-string v0, "field \'tvVoiceCommandDetail\'"

    .line 37
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090306

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvVoiceCommandDetail:Landroid/widget/TextView;

    const-string v0, "field \'lvCommands\'"

    .line 38
    const-class v1, Lcom/phicomm/speaker/views/MyListView;

    const v2, 0x7f09017a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/views/MyListView;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->lvCommands:Lcom/phicomm/speaker/views/MyListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    .line 44
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 46
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    .line 47
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 48
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->ivIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvDetailTitle:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->tvVoiceCommandDetail:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;->lvCommands:Lcom/phicomm/speaker/views/MyListView;

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity_ViewBinding;->b:Landroid/view/View;

    return-void
.end method
