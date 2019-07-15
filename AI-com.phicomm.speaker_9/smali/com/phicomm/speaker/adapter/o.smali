.class public Lcom/phicomm/speaker/adapter/o;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SpeakerV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/o$c;,
        Lcom/phicomm/speaker/adapter/o$a;,
        Lcom/phicomm/speaker/adapter/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Landroid/support/v7/widget/RecyclerView$t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/phicomm/speaker/adapter/o$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/adapter/o$b;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/phicomm/speaker/adapter/o;->b:I

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o;->a:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/o;->d:Lcom/phicomm/speaker/adapter/o$b;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/adapter/o;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/o;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/adapter/o;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/adapter/o;)Lcom/phicomm/speaker/adapter/o$b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/phicomm/speaker/adapter/o;->d:Lcom/phicomm/speaker/adapter/o$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/o;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/phicomm/speaker/adapter/o;->b:I

    .line 73
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/o;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/phicomm/speaker/adapter/o;->b:I

    .line 56
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iput v0, p0, Lcom/phicomm/speaker/adapter/o;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/o;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 115
    iget v0, p0, Lcom/phicomm/speaker/adapter/o;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/o$a;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/phicomm/speaker/adapter/o$a;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/adapter/o$a;->a(Lcom/phicomm/speaker/adapter/o$a;I)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/phicomm/speaker/adapter/o$c;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Lcom/phicomm/speaker/adapter/o$c;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/adapter/o$c;->a(Lcom/phicomm/speaker/adapter/o$c;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b00f0

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/phicomm/speaker/adapter/o$c;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/o$c;-><init>(Lcom/phicomm/speaker/adapter/o;Landroid/view/View;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b00ef

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/phicomm/speaker/adapter/o$a;

    invoke-direct {p2, p0, p1}, Lcom/phicomm/speaker/adapter/o$a;-><init>(Lcom/phicomm/speaker/adapter/o;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
