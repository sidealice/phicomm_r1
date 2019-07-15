.class public Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "CropImageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/CropImageActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/CropImageActivity;Landroid/view/View;)V
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

    const-string v0, "field \'mClipImageLayout\'"

    .line 23
    const-class v1, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    const v2, 0x7f090071

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/CropImageActivity;->mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    const-string v0, "method \'tv_cancel\'"

    const v1, 0x7f090259

    .line 24
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->b:Landroid/view/View;

    .line 26
    new-instance v1, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;Lcom/phicomm/speaker/activity/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'tv_complete\'"

    const v1, 0x7f090276

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->c:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;Lcom/phicomm/speaker/activity/CropImageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/CropImageActivity;

    .line 45
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 47
    iput-object v1, v0, Lcom/phicomm/speaker/activity/CropImageActivity;->mClipImageLayout:Lcom/phicomm/speaker/views/clipview/ClipImageLayout;

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->b:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object v1, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
