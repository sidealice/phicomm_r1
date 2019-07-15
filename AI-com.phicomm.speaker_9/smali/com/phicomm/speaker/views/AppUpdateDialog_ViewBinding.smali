.class public Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "AppUpdateDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/views/AppUpdateDialog;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/views/AppUpdateDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/views/AppUpdateDialog;Landroid/view/View;)V
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->a:Lcom/phicomm/speaker/views/AppUpdateDialog;

    const-string v0, "field \'mTvTitle\'"

    .line 32
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    const-string v0, "field \'mTvMessage\'"

    .line 33
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902a2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    const-string v0, "field \'mTvCancel\' and method \'tv_cancel\'"

    const v1, 0x7f090259

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvCancel\'"

    .line 35
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->b:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$1;-><init>(Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;Lcom/phicomm/speaker/views/AppUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvDownload\' and method \'tv_download\'"

    const v1, 0x7f090284

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvDownload\'"

    .line 44
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->c:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$2;-><init>(Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;Lcom/phicomm/speaker/views/AppUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mPb\'"

    .line 52
    const-class v1, Landroid/widget/ProgressBar;

    const v2, 0x7f0901ab

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mPb:Landroid/widget/ProgressBar;

    const-string v0, "field \'mClDownload\'"

    .line 53
    const-class v1, Landroid/support/constraint/ConstraintLayout;

    const v2, 0x7f09006c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mClDownload:Landroid/support/constraint/ConstraintLayout;

    const-string v0, "field \'mLlBtn\'"

    .line 54
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09015f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mLlBtn:Landroid/widget/LinearLayout;

    const-string v0, "field \'mViewLine1\'"

    const v1, 0x7f090312

    .line 55
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    const-string v0, "field \'mViewLine2\'"

    const v1, 0x7f090313

    .line 56
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine2:Landroid/view/View;

    const-string v0, "field \'mTvDownloadStatus\'"

    .line 57
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090285

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownloadStatus:Landroid/widget/TextView;

    const-string v0, "field \'mTvProgress\'"

    .line 58
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902c7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvProgress:Landroid/widget/TextView;

    const-string v0, "field \'mTvExtra\' and method \'tv_extra\'"

    const v1, 0x7f09028a

    .line 59
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvExtra\'"

    .line 60
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->d:Landroid/view/View;

    .line 62
    new-instance v1, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding$3;-><init>(Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;Lcom/phicomm/speaker/views/AppUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'llUpdateHint\'"

    .line 68
    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09016f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->llUpdateHint:Landroid/widget/LinearLayout;

    const-string v0, "field \'tvCancelDownload\'"

    .line 69
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09025a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/phicomm/speaker/views/AppUpdateDialog;->tvCancelDownload:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->a:Lcom/phicomm/speaker/views/AppUpdateDialog;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 78
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvTitle:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvMessage:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvCancel:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownload:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mPb:Landroid/widget/ProgressBar;

    .line 83
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mClDownload:Landroid/support/constraint/ConstraintLayout;

    .line 84
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mLlBtn:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine1:Landroid/view/View;

    .line 86
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mViewLine2:Landroid/view/View;

    .line 87
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvDownloadStatus:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvProgress:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->mTvExtra:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->llUpdateHint:Landroid/widget/LinearLayout;

    .line 91
    iput-object v1, v0, Lcom/phicomm/speaker/views/AppUpdateDialog;->tvCancelDownload:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->b:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->c:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->d:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lcom/phicomm/speaker/views/AppUpdateDialog_ViewBinding;->a:Lcom/phicomm/speaker/views/AppUpdateDialog;

    return-void
.end method
