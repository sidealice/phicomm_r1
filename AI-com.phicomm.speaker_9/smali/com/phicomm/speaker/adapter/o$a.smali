.class public Lcom/phicomm/speaker/adapter/o$a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "SpeakerV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/adapter/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/o;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/o;Landroid/view/View;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    .line 141
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    const p1, 0x7f090130

    .line 142
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->b:Landroid/widget/ImageView;

    const p1, 0x7f09012e

    .line 143
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->c:Landroid/widget/ImageView;

    const p1, 0x7f0902e9

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->f:Landroid/widget/TextView;

    const p1, 0x7f09012d

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->g:Landroid/widget/ImageView;

    const p1, 0x7f090274

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->h:Landroid/view/View;

    const p1, 0x7f090141

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->d:Landroid/widget/ImageView;

    const p1, 0x7f0902f6

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->e:Landroid/widget/TextView;

    const p1, 0x7f0900b5

    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->i:Landroid/view/View;

    const p1, 0x7f0901e1

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->j:Landroid/view/View;

    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/o$a;->a(Z)V

    const-string p1, ""

    const/4 p2, 0x1

    .line 152
    invoke-direct {p0, p2, p1}, Lcom/phicomm/speaker/adapter/o$a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->b(Lcom/phicomm/speaker/adapter/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 182
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->isOnline()Z

    move-result v0

    .line 184
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/b;->c()Z

    move-result v1

    .line 185
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/adapter/o$a;->a(Z)V

    .line 186
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v1

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/e/a/a;->d(Ljava/lang/String;)Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/adapter/o$a;->a(ZLjava/lang/String;)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/phicomm/speaker/adapter/o$a$1;

    invoke-direct {v2, p0, p1}, Lcom/phicomm/speaker/adapter/o$a$1;-><init>(Lcom/phicomm/speaker/adapter/o$a;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a;->f:Landroid/widget/TextView;

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_nickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getPic_url_normal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o$a;->c:Landroid/widget/ImageView;

    .line 205
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/phicomm/speaker/adapter/o$a$2;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/adapter/o$a$2;-><init>(Lcom/phicomm/speaker/adapter/o$a;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->h:Landroid/view/View;

    new-instance v1, Lcom/phicomm/speaker/adapter/o$a$3;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/adapter/o$a$3;-><init>(Lcom/phicomm/speaker/adapter/o$a;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/o$a;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/o$a;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0801ba

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->j:Landroid/view/View;

    const v0, 0x7f0801a0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0801bd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o$a;->a:Lcom/phicomm/speaker/adapter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/adapter/o;->a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->j:Landroid/view/View;

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 176
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/o$a;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u79bb\u7ebf]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
