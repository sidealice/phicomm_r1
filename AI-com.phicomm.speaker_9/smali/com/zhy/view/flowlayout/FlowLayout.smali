.class public Lcom/zhy/view/flowlayout/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/zhy/view/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zhy/view/flowlayout/FlowLayout;->b:Ljava/util/List;

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zhy/view/flowlayout/FlowLayout;->c:Ljava/util/List;

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    .line 28
    sget-object p3, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    sget p2, Lcom/zhy/view/flowlayout/R$styleable;->TagFlowLayout_gravity:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->d:I

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 213
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 207
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 219
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 110
    iget-object p1, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 111
    iget-object p1, p0, Lcom/zhy/view/flowlayout/FlowLayout;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 112
    iget-object p1, p0, Lcom/zhy/view/flowlayout/FlowLayout;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    iget-object p1, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getWidth()I

    move-result p1

    .line 120
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    move v0, p5

    :goto_0
    const/16 v1, 0x8

    if-ge p4, p2, :cond_2

    .line 124
    invoke-virtual {p0, p4}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v5, v3, v0

    .line 132
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 134
    iget-object v5, p0, Lcom/zhy/view/flowlayout/FlowLayout;->b:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {v5, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p5, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p5, p0, Lcom/zhy/view/flowlayout/FlowLayout;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget p5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p5, v4

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, v0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    move v0, p3

    .line 142
    :cond_1
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 143
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v3

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v1

    invoke-static {p5, v4}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 145
    iget-object v1, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 148
    :cond_2
    iget-object p2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->b:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    iget-object p4, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result p2

    .line 155
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingTop()I

    move-result p4

    .line 157
    iget-object p5, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    move v0, p4

    move p4, p2

    move p2, p3

    :goto_2
    if-ge p2, p5, :cond_5

    .line 161
    iget-object v2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    .line 162
    iget-object v2, p0, Lcom/zhy/view/flowlayout/FlowLayout;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/zhy/view/flowlayout/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 166
    iget v4, p0, Lcom/zhy/view/flowlayout/FlowLayout;->d:I

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sub-int p4, p1, v3

    .line 174
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr p4, v3

    goto :goto_3

    :pswitch_1
    sub-int p4, p1, v3

    .line 171
    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr p4, v3

    goto :goto_3

    .line 168
    :pswitch_2
    invoke-virtual {p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result p4

    :goto_3
    move v3, p4

    move p4, p3

    .line 178
    :goto_4
    iget-object v4, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p4, v4, :cond_4

    .line 180
    iget-object v4, p0, Lcom/zhy/view/flowlayout/FlowLayout;->e:Ljava/util/List;

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_5

    .line 186
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v3

    .line 190
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v0

    .line 191
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 192
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 194
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    :goto_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    move p4, v3

    goto/16 :goto_2

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 47
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 48
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 49
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v6, v5, :cond_4

    .line 62
    invoke-virtual {v0, v6}, Lcom/zhy/view/flowlayout/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 63
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    add-int/lit8 v11, v5, -0x1

    if-ne v6, v11, :cond_0

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v9, v10

    :cond_0
    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v16, v3

    goto :goto_3

    :cond_1
    move/from16 v12, p1

    move/from16 v13, p2

    .line 72
    invoke-virtual {v0, v11, v12, v13}, Lcom/zhy/view/flowlayout/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 73
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move/from16 v16, v3

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v3

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v3

    .line 78
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v11

    iget v11, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    add-int v11, v7, v15

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v14

    sub-int v14, v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v17

    sub-int v14, v14, v17

    if-le v11, v14, :cond_2

    .line 83
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v9, v10

    move v11, v15

    goto :goto_1

    .line 90
    :cond_2
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_3

    .line 94
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v9, v3

    move v10, v3

    move v8, v7

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    move v7, v11

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    move/from16 v16, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_5

    goto :goto_4

    .line 98
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v8

    :goto_4
    if-ne v4, v3, :cond_6

    move/from16 v3, v16

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/zhy/view/flowlayout/FlowLayout;->getPaddingBottom()I

    move-result v2

    add-int v3, v9, v2

    :goto_5
    invoke-virtual {v0, v1, v3}, Lcom/zhy/view/flowlayout/FlowLayout;->setMeasuredDimension(II)V

    return-void
.end method
