.class public Lcom/phicomm/speaker/activity/FavoriteManageActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "FavoriteManageActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/g;


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/a;

.field private b:Lcom/phicomm/speaker/presenter/j;

.field private d:I

.field rvFavoriteList:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field tvDelete:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/adapter/a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/phicomm/speaker/views/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a(Ljava/lang/String;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f004d

    .line 149
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f00a9

    .line 150
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->d(I)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity$5;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->b(Landroid/view/View$OnClickListener;)Lcom/phicomm/speaker/views/CommonDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/CommonDialog$Builder;->a()Lcom/phicomm/speaker/views/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/CommonDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    return p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/FavoriteManageActivity;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p1, 0x7f0f0279

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0219

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)Lcom/phicomm/speaker/presenter/j;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b:Lcom/phicomm/speaker/presenter/j;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 98
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "favoriteType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    const v0, 0x7f0f003b

    .line 100
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->e(I)V

    .line 101
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->h()V

    const v0, 0x7f0f0065

    .line 102
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->c(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvMenu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(Z)V

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    const v4, 0x7f0f0219

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 112
    new-instance v0, Lcom/phicomm/speaker/adapter/a;

    iget-object v3, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget v4, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/phicomm/speaker/adapter/a;-><init>(ZLandroid/support/v7/widget/RecyclerView;ZI)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->rvFavoriteList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 115
    iget v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "collectList"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/phicomm/speaker/activity/FavoriteManageActivity$2;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity$2;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v3, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a;->c(Ljava/util/List;)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "collectList"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/phicomm/speaker/activity/FavoriteManageActivity$3;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity$3;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v3, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a;->d(Ljava/util/List;)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    new-instance v1, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity$4;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a$b;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a;->g()I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/a;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 134
    iget v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f0f0080

    goto :goto_0

    :cond_0
    const v0, 0x7f0f007f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0081

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d:I

    if-ne v1, v2, :cond_2

    const v1, 0x7f0f00ad

    goto :goto_1

    :cond_2
    const v1, 0x7f0f00ac

    .line 137
    :goto_1
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->d()V

    .line 60
    new-instance v0, Lcom/phicomm/speaker/presenter/j;

    new-instance v1, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity$1;-><init>(Lcom/phicomm/speaker/activity/FavoriteManageActivity;)V

    invoke-direct {v0, v1, p0}, Lcom/phicomm/speaker/presenter/j;-><init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b:Lcom/phicomm/speaker/presenter/j;

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->j(I)V

    return-void
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b(ILandroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0032

    .line 54
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->setContentView(I)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->j()V

    return-void
.end method

.method clickClose()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0902a1
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->finish()V

    return-void
.end method

.method clickDelete()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method clickSelectAll()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->mTvBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 192
    iget-object v1, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/adapter/a;->a(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/FavoriteManageActivity;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/j;->c()V

    return-void
.end method
