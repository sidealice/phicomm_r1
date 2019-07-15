.class public Lcom/phicomm/speaker/adapter/s;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "VoiceCommandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/s$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/phicomm/speaker/c/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s;->a:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/s;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/s$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00b8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/phicomm/speaker/adapter/s$a;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/s$a;-><init>(Lcom/phicomm/speaker/adapter/s;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/phicomm/speaker/adapter/s$a;I)V
    .locals 4
    .param p1    # Lcom/phicomm/speaker/adapter/s$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/s;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/bean/VoiceCommandBean;

    if-eqz p2, :cond_2

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/s;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getIcon_url()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getIcon_url()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/views/a/a;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/s;->a:Landroid/app/Activity;

    .line 54
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e5

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/views/a/a;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v2, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    iget-object v3, p0, Lcom/phicomm/speaker/adapter/s;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p1, Lcom/phicomm/speaker/adapter/s$a;->a:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    .line 57
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/s$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getCommand_words()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/s;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getCommand_words()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    :goto_1
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/s$a;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/s;->c:Lcom/phicomm/speaker/c/f;

    if-eqz p2, :cond_3

    .line 62
    iget-object p2, p1, Lcom/phicomm/speaker/adapter/s$a;->itemView:Landroid/view/View;

    new-instance v0, Lcom/phicomm/speaker/adapter/t;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/adapter/t;-><init>(Lcom/phicomm/speaker/adapter/s;Lcom/phicomm/speaker/adapter/s$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method final synthetic a(Lcom/phicomm/speaker/adapter/s$a;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/phicomm/speaker/adapter/s$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/s;->c:Lcom/phicomm/speaker/c/f;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/s$a;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/phicomm/speaker/c/f;->a(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/c/f;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/s;->c:Lcom/phicomm/speaker/c/f;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 75
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

    .line 31
    check-cast p1, Lcom/phicomm/speaker/adapter/s$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/s;->a(Lcom/phicomm/speaker/adapter/s$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/s;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/s$a;

    move-result-object p1

    return-object p1
.end method
