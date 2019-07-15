.class public Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/MainActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/phicomm/speaker/activity/MainActivity;
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
.method public constructor <init>(Lcom/phicomm/speaker/activity/MainActivity;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->a:Lcom/phicomm/speaker/activity/MainActivity;

    const-string v0, "field \'mViewPager\'"

    .line 32
    const-class v1, Lcom/phicomm/speaker/views/MyViewPager;

    const v2, 0x7f09031a

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MyViewPager;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    const-string v0, "field \'mRbHome\' and method \'rb_home\'"

    const v1, 0x7f0901be

    .line 33
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRbHome\'"

    .line 34
    const-class v3, Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/MenuRadioButton;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 35
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->b:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;Lcom/phicomm/speaker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRbFunction\' and method \'rb_function\'"

    const v1, 0x7f0901bd

    .line 42
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRbFunction\'"

    .line 43
    const-class v3, Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/MenuRadioButton;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MainActivity;->mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 44
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    .line 45
    new-instance v1, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;Lcom/phicomm/speaker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mRbPlayer\' and method \'rb_player\'"

    const v1, 0x7f0901c1

    .line 51
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'mRbPlayer\'"

    .line 52
    const-class v3, Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/MenuRadioButton;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MainActivity;->mRbPlayer:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 53
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    .line 54
    new-instance v1, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;Lcom/phicomm/speaker/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'mMRbMine\' and method \'rb_mine\'"

    const v1, 0x7f09018d

    .line 60
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-string v0, "field \'mMRbMine\'"

    .line 61
    const-class v2, Lcom/phicomm/speaker/views/MenuRadioButton;

    invoke-static {p2, v1, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/MenuRadioButton;

    iput-object v0, p1, Lcom/phicomm/speaker/activity/MainActivity;->mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 62
    iput-object p2, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;-><init>(Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;Lcom/phicomm/speaker/activity/MainActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->a:Lcom/phicomm/speaker/activity/MainActivity;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 77
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MainActivity;->mViewPager:Lcom/phicomm/speaker/views/MyViewPager;

    .line 78
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MainActivity;->mRbHome:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 79
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MainActivity;->mRbFunction:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 80
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MainActivity;->mRbPlayer:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 81
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MainActivity;->mMRbMine:Lcom/phicomm/speaker/views/MenuRadioButton;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->b:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->c:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->d:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->e:Landroid/view/View;

    .line 92
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;->a:Lcom/phicomm/speaker/activity/MainActivity;

    return-void
.end method
