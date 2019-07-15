.class public Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;
.super Ljava/lang/Object;
.source "HomeFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/fragment/HomeFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/fragment/HomeFragment;
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
.method public constructor <init>(Lcom/phicomm/speaker/fragment/HomeFragment;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    const-string v0, "field \'mViewTitle\'"

    const v1, 0x7f090295

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewTitle:Landroid/view/View;

    const-string v0, "field \'mViewAddSpeaker\'"

    const v1, 0x7f09014a

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewAddSpeaker:Landroid/view/View;

    const-string v0, "field \'mTvAddSpeaker\' and method \'tv_add_speaker\'"

    const v1, 0x7f09024c

    .line 34
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvAddSpeaker\'"

    .line 35
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->b:Landroid/view/View;

    .line 37
    new-instance v1, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$1;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;Lcom/phicomm/speaker/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRlAddSpeaker\'"

    const v1, 0x7f0901d1

    .line 43
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mRlAddSpeaker:Landroid/view/View;

    const-string v0, "field \'mLLAddSpeakerError\' and method \'reTryNetRequest\'"

    const v1, 0x7f09014b

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mLLAddSpeakerError:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->c:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$2;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;Lcom/phicomm/speaker/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mViewHomeSpeaker\'"

    const v1, 0x7f090151

    .line 53
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewHomeSpeaker:Landroid/view/View;

    const-string v0, "field \'mErrorView\' and method \'reTryGetLog\'"

    const v1, 0x7f090152

    .line 54
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding$3;-><init>(Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;Lcom/phicomm/speaker/fragment/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRecyclerLayoutView\'"

    const v1, 0x7f090153

    .line 63
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    const-string v0, "field \'mBanner\'"

    .line 64
    const-class v1, Lcom/phicomm/speaker/views/banner/MyBanner;

    const v2, 0x7f0900c0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/banner/MyBanner;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;

    const-string v0, "field \'mRefreshLayout\'"

    .line 65
    const-class v1, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const v2, 0x7f0900bf

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const-string v0, "field \'mRecyclerView\'"

    .line 66
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f0900c1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v0, "field \'mTvWarnTip\'"

    .line 67
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090296

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvWarnTip:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 76
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewTitle:Landroid/view/View;

    .line 77
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewAddSpeaker:Landroid/view/View;

    .line 78
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvAddSpeaker:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRlAddSpeaker:Landroid/view/View;

    .line 80
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mLLAddSpeakerError:Landroid/view/View;

    .line 81
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mViewHomeSpeaker:Landroid/view/View;

    .line 82
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mErrorView:Landroid/view/View;

    .line 83
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerLayoutView:Landroid/view/View;

    .line 84
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mBanner:Lcom/phicomm/speaker/views/banner/MyBanner;

    .line 85
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRefreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    .line 86
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 87
    iput-object v1, v0, Lcom/phicomm/speaker/fragment/HomeFragment;->mTvWarnTip:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->b:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->c:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->d:Landroid/view/View;

    .line 96
    iput-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment_ViewBinding;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    return-void
.end method
