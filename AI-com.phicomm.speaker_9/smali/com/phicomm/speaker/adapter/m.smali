.class public Lcom/phicomm/speaker/adapter/m;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SmartHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/SmartDeviceBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/m;->b:Ljava/util/List;

    .line 38
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    const p2, 0x7f0f0252

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m;->c:Ljava/lang/String;

    .line 39
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string p2, "#494949"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/m;->d:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/m$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00b5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/phicomm/speaker/adapter/m$a;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/m$a;-><init>(Lcom/phicomm/speaker/adapter/m;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/phicomm/speaker/adapter/m$a;I)V
    .locals 5
    .param p1    # Lcom/phicomm/speaker/adapter/m$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/m;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/SmartDeviceBean;

    if-eqz p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/views/a/a;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    .line 56
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e4

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p1, Lcom/phicomm/speaker/adapter/m$a;->a:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    const-string v0, "0"

    .line 60
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getOnline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->a:Landroid/widget/ImageView;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 63
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getDevice_name()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/phicomm/speaker/adapter/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/m;->d:Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x4

    const/16 v4, 0x12

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/m$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getTransfer_example()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->a:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/m;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/m$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getDevice_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/m$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/SmartDeviceBean;->getTransfer_example()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 96
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    check-cast p1, Lcom/phicomm/speaker/adapter/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/m;->a(Lcom/phicomm/speaker/adapter/m$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/m;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/m$a;

    move-result-object p1

    return-object p1
.end method
