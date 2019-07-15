.class public Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SpeakerWifiListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/phicomm/speaker/b/h;
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/phicomm/speaker/model/common/a/b;

.field private d:Lorg/json/JSONArray;

.field private e:Lcom/phicomm/speaker/b/e;

.field private f:I

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090179
    .end annotation
.end field

.field refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c8
    .end annotation
.end field

.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)Lorg/json/JSONArray;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;

    return-object p0
.end method

.method static final synthetic b(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0f0291

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const v0, 0x7f0801e1

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setFailImageResource(I)V

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0f0290

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 134
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/b;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/b;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const v0, 0x7f0f0294

    .line 61
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e(I)V

    const v0, 0x7f0f0292

    .line 62
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->f(I)V

    const v0, 0x7f06003e

    .line 63
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->h(I)V

    .line 64
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const v3, 0x7f0b008d

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getTvFailMessage()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060039

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b()V

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b()V

    .line 76
    :goto_0
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b:Lcom/phicomm/speaker/model/common/a/b;

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b:Lcom/phicomm/speaker/model/common/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullDownRefresh(Z)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setPullUpRefreshListener(Lcom/phicomm/speaker/views/refresh/RefreshLayout$b;)V

    .line 114
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getPresenter()Lcom/phicomm/speaker/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e:Lcom/phicomm/speaker/b/e;

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a(Lorg/json/JSONArray;Z)V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0065

    .line 56
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/widget/TextView;)V

    .line 129
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->k()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 2

    .line 213
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/c;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/c;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)V

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/d;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/d;-><init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b(Z)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b(Z)V

    goto :goto_0

    .line 163
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->b()V

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, p2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    if-nez p2, :cond_3

    .line 170
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 172
    :cond_3
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b:Lcom/phicomm/speaker/model/common/a/b;

    invoke-virtual {p2}, Lcom/phicomm/speaker/model/common/a/b;->notifyDataSetChanged()V

    .line 173
    iget p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->f:I

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    iget v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->f:I

    if-le p2, v0, :cond_4

    .line 174
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->listView:Landroid/widget/ListView;

    iget v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->f:I

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 176
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->f:I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 197
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/confignet/af;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    const v0, 0x7f0f0293

    .line 199
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->b(Z)V

    :goto_0
    return-void
.end method

.method final synthetic f()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->b(Lcom/phicomm/speaker/b/h;)V

    return-void
.end method

.method final synthetic g()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a()V

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->a(Lcom/phicomm/speaker/b/h;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/e;->b()V

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->a(Ljava/lang/Object;)V

    .line 122
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 219
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "info"

    iget-object p4, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;

    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "list"

    iget-object p3, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->d:Lorg/json/JSONArray;

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    .line 220
    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->finish()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->k()V

    return-void
.end method
