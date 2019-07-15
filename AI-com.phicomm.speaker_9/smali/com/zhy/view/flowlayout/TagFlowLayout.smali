.class public Lcom/zhy/view/flowlayout/TagFlowLayout;
.super Lcom/zhy/view/flowlayout/FlowLayout;
.source "TagFlowLayout.java"

# interfaces
.implements Lcom/zhy/view/flowlayout/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/view/flowlayout/TagFlowLayout$b;,
        Lcom/zhy/view/flowlayout/TagFlowLayout$a;
    }
.end annotation


# instance fields
.field private d:Lcom/zhy/view/flowlayout/a;

.field private e:Z

.field private f:I

.field private g:Landroid/view/MotionEvent;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/zhy/view/flowlayout/TagFlowLayout$a;

.field private j:Lcom/zhy/view/flowlayout/TagFlowLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->e:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    .line 29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    .line 35
    sget-object v1, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout_auto_select_effect:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->e:Z

    .line 37
    sget p2, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout_max_select:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    iget-boolean p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->e:Z

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0, p3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private a(Landroid/view/View;)I
    .locals 3

    .line 306
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 309
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(II)Lcom/zhy/view/flowlayout/TagView;
    .locals 5

    .line 317
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 320
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhy/view/flowlayout/TagView;

    .line 321
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 323
    invoke-virtual {v2, v3}, Lcom/zhy/view/flowlayout/TagView;->getHitRect(Landroid/graphics/Rect;)V

    .line 324
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 12

    .line 115
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->removeAllViews()V

    .line 116
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    .line 118
    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    invoke-virtual {v1}, Lcom/zhy/view/flowlayout/a;->a()Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 119
    :goto_0
    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/a;->b()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 121
    invoke-virtual {v0, v2}, Lcom/zhy/view/flowlayout/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v2, v3}, Lcom/zhy/view/flowlayout/a;->a(Lcom/zhy/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 123
    new-instance v4, Lcom/zhy/view/flowlayout/TagView;

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zhy/view/flowlayout/TagView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 132
    invoke-virtual {v3, v5}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 133
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zhy/view/flowlayout/TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 138
    :cond_0
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 139
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v7, v8}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v7, v9, v10, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {v4, v6}, Lcom/zhy/view/flowlayout/TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :goto_1
    invoke-virtual {v4, v3}, Lcom/zhy/view/flowlayout/TagView;->addView(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/zhy/view/flowlayout/TagFlowLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v4, v5}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    invoke-virtual {v0, v2}, Lcom/zhy/view/flowlayout/a;->a(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/zhy/view/flowlayout/a;->a(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v4, v5}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Lcom/zhy/view/flowlayout/TagView;I)V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->e:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagView;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 220
    iget v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zhy/view/flowlayout/TagView;

    .line 225
    invoke-virtual {v3, v1}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 226
    invoke-virtual {p1, v2}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 227
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    iget v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    if-lt v0, v1, :cond_1

    return-void

    .line 233
    :cond_1
    invoke-virtual {p1, v2}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 234
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p1, v1}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    .line 239
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->i:Lcom/zhy/view/flowlayout/TagFlowLayout$a;

    if-eqz p1, :cond_3

    .line 243
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->i:Lcom/zhy/view/flowlayout/TagFlowLayout$a;

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Lcom/zhy/view/flowlayout/TagFlowLayout$a;->a(Ljava/util/Set;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/zhy/view/flowlayout/a;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    return-object v0
.end method

.method public getSelectedList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 64
    invoke-virtual {p0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zhy/view/flowlayout/TagView;

    .line 65
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v2}, Lcom/zhy/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 68
    invoke-virtual {v2, v4}, Lcom/zhy/view/flowlayout/TagView;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/zhy/view/flowlayout/FlowLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 280
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 282
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "key_choose_pos"

    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0, v3}, Lcom/zhy/view/flowlayout/TagFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zhy/view/flowlayout/TagView;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 294
    invoke-virtual {v3, v4}, Lcom/zhy/view/flowlayout/TagView;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "key_default"

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/zhy/view/flowlayout/FlowLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 301
    :cond_2
    invoke-super {p0, p1}, Lcom/zhy/view/flowlayout/FlowLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_default"

    .line 262
    invoke-super {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, ""

    .line 265
    iget-object v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "key_choose_pos"

    .line 273
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->g:Landroid/view/MotionEvent;

    .line 172
    :cond_0
    invoke-super {p0, p1}, Lcom/zhy/view/flowlayout/FlowLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->g:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->performClick()Z

    move-result v0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 181
    iget-object v1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->g:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 182
    iput-object v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->g:Landroid/view/MotionEvent;

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(II)Lcom/zhy/view/flowlayout/TagView;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Landroid/view/View;)I

    move-result v1

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a(Lcom/zhy/view/flowlayout/TagView;I)V

    .line 189
    iget-object v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->j:Lcom/zhy/view/flowlayout/TagFlowLayout$b;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->j:Lcom/zhy/view/flowlayout/TagFlowLayout$b;

    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0, v1, p0}, Lcom/zhy/view/flowlayout/TagFlowLayout$b;->a(Landroid/view/View;ILcom/zhy/view/flowlayout/FlowLayout;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Lcom/zhy/view/flowlayout/a;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    .line 107
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->d:Lcom/zhy/view/flowlayout/a;

    invoke-virtual {p1, p0}, Lcom/zhy/view/flowlayout/a;->a(Lcom/zhy/view/flowlayout/a$a;)V

    .line 108
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 109
    invoke-direct {p0}, Lcom/zhy/view/flowlayout/TagFlowLayout;->a()V

    return-void
.end method

.method public setMaxSelectCount(I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const-string v0, "TagFlowLayout"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you has already select more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " views , so it will be clear ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 205
    :cond_0
    iput p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->f:I

    return-void
.end method

.method public setOnSelectListener(Lcom/zhy/view/flowlayout/TagFlowLayout$a;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->i:Lcom/zhy/view/flowlayout/TagFlowLayout$a;

    .line 84
    iget-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->i:Lcom/zhy/view/flowlayout/TagFlowLayout$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setOnTagClickListener(Lcom/zhy/view/flowlayout/TagFlowLayout$b;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zhy/view/flowlayout/TagFlowLayout;->j:Lcom/zhy/view/flowlayout/TagFlowLayout$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setClickable(Z)V

    :cond_0
    return-void
.end method
