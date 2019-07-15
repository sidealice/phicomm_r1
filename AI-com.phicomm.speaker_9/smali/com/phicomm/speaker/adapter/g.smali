.class public Lcom/phicomm/speaker/adapter/g;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "LyricsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a<",
        "Lcom/phicomm/speaker/adapter/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/phicomm/speaker/bean/player/LyricBean;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/phicomm/speaker/adapter/g;->a:I

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/phicomm/speaker/adapter/g;->b:I

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/phicomm/speaker/adapter/g;->c:I

    .line 35
    iput p1, p0, Lcom/phicomm/speaker/adapter/g;->f:I

    .line 36
    iput p2, p0, Lcom/phicomm/speaker/adapter/g;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/g$a;
    .locals 4

    .line 52
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 54
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lcom/phicomm/speaker/adapter/g;->f:I

    invoke-direct {p1, v1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 56
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget p2, p0, Lcom/phicomm/speaker/adapter/g;->g:I

    invoke-direct {p1, v1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance p2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v1, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x11

    .line 59
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700c5

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f06003e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result p1

    .line 65
    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 67
    :goto_0
    new-instance p1, Lcom/phicomm/speaker/adapter/g$a;

    invoke-direct {p1, p0, v0}, Lcom/phicomm/speaker/adapter/g$a;-><init>(Lcom/phicomm/speaker/adapter/g;Landroid/view/View;)V

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/phicomm/speaker/adapter/g;->e:I

    .line 47
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/g;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/g$a;I)V
    .locals 3

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/g;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_2

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/g;->i:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/player/LyricBean;

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/g;->h:Lcom/phicomm/speaker/bean/player/LyricBean;

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->h:Lcom/phicomm/speaker/bean/player/LyricBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/player/LyricBean;->getLine_lyric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/g;->i:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/phicomm/speaker/adapter/g$a;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/phicomm/speaker/adapter/g$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/adapter/g;->e:I

    if-ne p2, v2, :cond_1

    const p2, 0x7f060037

    goto :goto_0

    :cond_1
    const p2, 0x7f06003e

    :goto_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p1, p1, Lcom/phicomm/speaker/adapter/g$a;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/phicomm/speaker/adapter/g;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/player/LyricBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/phicomm/speaker/adapter/g;->e:I

    .line 42
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/g;->notifyDataSetChanged()V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/player/LyricBean;

    .line 104
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/player/LyricBean;->getLine_lyric()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/g;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/phicomm/speaker/adapter/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/g;->a(Lcom/phicomm/speaker/adapter/g$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$t;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/adapter/g;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/g$a;

    move-result-object p1

    return-object p1
.end method
