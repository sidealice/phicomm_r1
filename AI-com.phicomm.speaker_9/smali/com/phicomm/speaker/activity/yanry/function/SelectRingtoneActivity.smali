.class public Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SelectRingtoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;,
        Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f020c

    .line 42
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->e(I)V

    .line 43
    const-class v0, Lcom/phicomm/speaker/model/a/b;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/model/a/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/model/a/b;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->a:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;-><init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003e

    .line 37
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->setContentView(I)V

    return-void
.end method
