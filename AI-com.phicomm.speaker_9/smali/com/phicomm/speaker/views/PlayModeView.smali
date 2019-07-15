.class public Lcom/phicomm/speaker/views/PlayModeView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PlayModeView.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/StateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 25
    new-array p2, p1, [Ljava/lang/String;

    const-string v0, "listLoop"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "singleLoop"

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const-string v0, "listShuffled"

    const/4 v3, 0x2

    aput-object v0, p2, v3

    iput-object p2, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/phicomm/speaker/views/PlayModeView;->b:Ljava/util/List;

    .line 36
    new-array p1, v2, [I

    const p2, 0x10100a7

    aput p2, p1, v1

    .line 37
    new-array p2, v2, [I

    const v0, -0x10100a7

    aput v0, p2, v1

    .line 38
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/phicomm/speaker/views/PlayModeView;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/phicomm/speaker/views/PlayModeView;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 49
    iget-object v2, p0, Lcom/phicomm/speaker/views/PlayModeView;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/PlayModeView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/PlayModeView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/PlayModeView;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 66
    iput p1, p0, Lcom/phicomm/speaker/views/PlayModeView;->c:I

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/PlayModeView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/PlayModeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public getCurrentPlayMode()Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/phicomm/speaker/views/PlayModeView;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNextPlayMode()Ljava/lang/String;
    .locals 2

    .line 86
    iget v0, p0, Lcom/phicomm/speaker/views/PlayModeView;->c:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/PlayModeView;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method
