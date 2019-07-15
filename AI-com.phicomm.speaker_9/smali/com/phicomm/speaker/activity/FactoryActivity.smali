.class public Lcom/phicomm/speaker/activity/FactoryActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "FactoryActivity.java"


# instance fields
.field a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 73
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    const-string v1, "\u5f53\u524d\u6ca1\u6709\u7ed1\u5b9a\u7684\u8bbe\u5907"

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(ILjava/lang/String;)V

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v1

    const-string v2, "rb35fqpoz33hyu56zh4kklgqqwdicqcmbxzwe4qc"

    new-instance v3, Lcom/phicomm/speaker/activity/FactoryActivity$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/phicomm/speaker/activity/FactoryActivity$2;-><init>(Lcom/phicomm/speaker/activity/FactoryActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/FactoryActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/FactoryActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/FactoryActivity;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/FactoryActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 51
    new-instance v0, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/views/recyclerview/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    new-instance v1, Lcom/phicomm/speaker/activity/FactoryActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/FactoryActivity$1;-><init>(Lcom/phicomm/speaker/activity/FactoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/zxing/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xbb9

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/FactoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f0272

    .line 43
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FactoryActivity;->b(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/FactoryActivity;->b()V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    const v1, 0x7f0f0169

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/FactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(Ljava/lang/String;)I

    move-result v0

    .line 46
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/FactoryActivity;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0030

    .line 37
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/FactoryActivity;->setContentView(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "SCAN_RESULT"

    .line 105
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    return-void
.end method
