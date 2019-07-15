.class Lcom/phicomm/speaker/activity/SmartHomeActivity$2;
.super Lcom/phicomm/speaker/presenter/b/n;
.source "SmartHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SmartHomeActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SmartHomeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SmartHomeActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 137
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a(Lcom/phicomm/speaker/activity/SmartHomeActivity;Z)Z

    .line 138
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->a(Lcom/phicomm/speaker/activity/SmartHomeActivity;Z)Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->b(Ljava/util/List;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->d(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->e(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/adapter/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/m;->notifyDataSetChanged()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    const-string p1, "0"

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SupportDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SmartHomeActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->f(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->g(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SmartHomeActivity$2;->a:Lcom/phicomm/speaker/activity/SmartHomeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SmartHomeActivity;->h(Lcom/phicomm/speaker/activity/SmartHomeActivity;)Lcom/phicomm/speaker/adapter/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/p;->notifyDataSetChanged()V

    return-void
.end method
