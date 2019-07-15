.class public Lcom/phicomm/speaker/activity/SelectVoiceActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SelectVoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/phicomm/speaker/presenter/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/phicomm/speaker/presenter/o;

.field private e:Z

.field private f:Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SWEET"

    return-object p1

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "FEMALE"

    return-object p1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "MALE"

    return-object p1

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CHILDREN"

    return-object p1

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->e:Z

    return p0
.end method

.method private d()Z
    .locals 3

    .line 66
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->hasDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getRom_version()Ljava/lang/String;

    move-result-object v0

    .line 70
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc33

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f024d

    .line 49
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->e(I)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "speakerVoice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 53
    new-instance v0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;-><init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->f:Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->f:Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 55
    new-instance v0, Lcom/phicomm/speaker/presenter/o;

    new-instance v1, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;-><init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/o;-><init>(Lcom/phicomm/speaker/presenter/b/o;Lcom/phicomm/speaker/presenter/b/f;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->d:Lcom/phicomm/speaker/presenter/o;

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->e:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->j(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b005c

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090025

    if-eq v0, v1, :cond_1

    const v1, 0x7f090027

    if-eq v0, v1, :cond_0

    const v1, 0x7f090058

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a:Ljava/lang/String;

    .line 110
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->d:Lcom/phicomm/speaker/presenter/o;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/o;->a(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->f:Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->d:Lcom/phicomm/speaker/presenter/o;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/o;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->d:Lcom/phicomm/speaker/presenter/o;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/o;->d()V

    return-void
.end method
