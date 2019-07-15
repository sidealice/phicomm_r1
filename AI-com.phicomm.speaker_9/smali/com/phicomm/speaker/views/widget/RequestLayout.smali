.class public Lcom/phicomm/speaker/views/widget/RequestLayout;
.super Landroid/widget/FrameLayout;
.source "RequestLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/phicomm/speaker/views/LoadingView;

.field private e:Ljava/lang/Runnable;

.field private f:Lcom/phicomm/speaker/presenter/b/f;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b00f2

    .line 54
    invoke-static {p1, v0, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090150

    .line 55
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->a:Landroid/view/View;

    const p1, 0x7f0900fb

    .line 56
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->b:Landroid/widget/ImageView;

    const p1, 0x7f09028b

    .line 57
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->c:Landroid/widget/TextView;

    const p1, 0x7f090174

    .line 58
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/views/LoadingView;

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->d:Lcom/phicomm/speaker/views/LoadingView;

    .line 59
    invoke-virtual {p0, p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setDataViewVisibility(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 106
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->a:Landroid/view/View;

    if-eq v2, v3, :cond_1

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    .line 108
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->e:Ljava/lang/Runnable;

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->d:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    const v2, 0x7f0f0133

    invoke-interface {v0, v2}, Lcom/phicomm/speaker/presenter/b/f;->a(I)V

    .line 101
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setDataViewVisibility(Z)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 127
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->e:Ljava/lang/Runnable;

    .line 128
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-boolean p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->d:Lcom/phicomm/speaker/views/LoadingView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/b/f;->b()V

    .line 138
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setDataViewVisibility(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->e:Ljava/lang/Runnable;

    .line 115
    iget-boolean v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->d:Lcom/phicomm/speaker/views/LoadingView;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/f;->b()V

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/widget/RequestLayout;->setDataViewVisibility(Z)V

    return-void
.end method

.method public getTvFailMessage()Landroid/widget/TextView;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setCustomLoadingView(Lcom/phicomm/speaker/presenter/b/f;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->d:Lcom/phicomm/speaker/views/LoadingView;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/LoadingView;->setVisibility(I)V

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->f:Lcom/phicomm/speaker/presenter/b/f;

    return-void
.end method

.method public setFailImageResource(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/widget/RequestLayout;->g:Z

    return-void
.end method
