.class public Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BaseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/base/BaseActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/base/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    const-string v0, "field \'mTvMenu\' and method \'tv_menu\'"

    const v1, 0x7f0902a1

    .line 32
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvMenu\'"

    .line 33
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->b:Landroid/view/View;

    .line 35
    new-instance v1, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;Lcom/phicomm/speaker/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mIvBack\' and method \'iv_back\'"

    const v1, 0x7f0900dd

    .line 41
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mIvBack\'"

    .line 42
    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/phicomm/speaker/base/BaseActivity;->mIvBack:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->c:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;Lcom/phicomm/speaker/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvBack\' and method \'tv_back\'"

    const v1, 0x7f090252

    .line 50
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mTvBack\'"

    .line 51
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/base/BaseActivity;->mTvBack:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->d:Landroid/view/View;

    .line 53
    new-instance v1, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;Lcom/phicomm/speaker/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mTvTitle\'"

    .line 59
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902fe

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/phicomm/speaker/base/BaseActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v0, "field \'mIvMenu\' and method \'iv_menu\'"

    const v1, 0x7f09010b

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mIvMenu\'"

    .line 61
    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    .line 62
    iput-object p2, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->e:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;Lcom/phicomm/speaker/base/BaseActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 77
    iput-object v1, v0, Lcom/phicomm/speaker/base/BaseActivity;->mTvMenu:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/phicomm/speaker/base/BaseActivity;->mIvBack:Landroid/widget/ImageView;

    .line 79
    iput-object v1, v0, Lcom/phicomm/speaker/base/BaseActivity;->mTvBack:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/phicomm/speaker/base/BaseActivity;->mTvTitle:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/phicomm/speaker/base/BaseActivity;->mIvMenu:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->b:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->c:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->d:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->e:Landroid/view/View;

    .line 92
    iput-object v1, p0, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    return-void
.end method
