.class public Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;
.super Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;
.source "MyFavoriteActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/activity/MyFavoriteActivity;",
        ">",
        "Lcom/phicomm/speaker/base/BaseActivity_ViewBinding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity;Landroid/view/View;)V
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

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/base/BaseActivity;Landroid/view/View;)V

    const-string v0, "field \'tvMusic\' and method \'tv_music\'"

    const v1, 0x7f0902b1

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvMusic\'"

    .line 27
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvMusic:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->b:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;-><init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvProgram\' and method \'tv_program\'"

    const v1, 0x7f0902c6

    .line 35
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvProgram\'"

    .line 36
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvProgram:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->c:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$2;-><init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'tvBroadcast\' and method \'tv_broadcast\'"

    const v1, 0x7f090258

    .line 44
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "field \'tvBroadcast\'"

    .line 45
    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvBroadcast:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->d:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$3;-><init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "field \'vpFavorite\'"

    .line 53
    const-class v1, Lcom/phicomm/speaker/views/MyViewPager;

    const v2, 0x7f090319

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/views/MyViewPager;

    iput-object p2, p1, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->a:Lcom/phicomm/speaker/base/BaseActivity;

    check-cast v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    .line 59
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity_ViewBinding;->unbind()V

    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvMusic:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvProgram:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tvBroadcast:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->vpFavorite:Lcom/phicomm/speaker/views/MyViewPager;

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->b:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->c:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;->d:Landroid/view/View;

    return-void
.end method
