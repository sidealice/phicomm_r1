.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/solver/widgets/c;

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Landroid/support/constraint/a;

.field private p:I

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Landroid/support/constraint/solver/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 560
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 492
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroid/support/constraint/solver/widgets/c;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/c;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    .line 504
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, 0x3

    .line 507
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    const/4 v1, -0x1

    .line 510
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    .line 519
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 561
    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 565
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 489
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 492
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroid/support/constraint/solver/widgets/c;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/c;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    .line 504
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, 0x3

    .line 507
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    const/4 v0, -0x1

    .line 510
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    .line 512
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 515
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 516
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 517
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    .line 518
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    .line 519
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 566
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 570
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 489
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 492
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroid/support/constraint/solver/widgets/c;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/c;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    const p3, 0x7fffffff

    .line 503
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    .line 504
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    const/4 p3, 0x1

    .line 506
    iput-boolean p3, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 p3, 0x3

    .line 507
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/4 p3, 0x0

    .line 508
    iput-object p3, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    const/4 p3, -0x1

    .line 510
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 515
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 516
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 517
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    .line 518
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    .line 519
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 571
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1144
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1145
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_12

    .line 1149
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1150
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_a

    .line 1153
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$a;

    .line 1154
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1155
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v11, :cond_11

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-eqz v11, :cond_1

    goto/16 :goto_a

    .line 1158
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e(I)V

    .line 1160
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$a;->width:I

    .line 1161
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$a;->height:I

    .line 1165
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->I:I

    if-eq v13, v15, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-eq v13, v14, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->J:I

    if-eq v13, v15, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v13, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v13, v15

    :goto_2
    if-eqz v13, :cond_e

    const/4 v13, -0x2

    if-nez v11, :cond_5

    .line 1183
    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    move/from16 v16, v15

    goto :goto_4

    :cond_5
    if-ne v11, v14, :cond_6

    .line 1187
    invoke-static {v1, v4, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    if-ne v11, v13, :cond_7

    move/from16 v16, v15

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    .line 1193
    :goto_3
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v6, v17

    :goto_4
    if-nez v12, :cond_8

    .line 1197
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v21, v17

    move/from16 v17, v15

    move/from16 v15, v21

    goto :goto_6

    :cond_8
    if-ne v12, v14, :cond_9

    .line 1201
    invoke-static {v2, v3, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    if-ne v12, v13, :cond_a

    move/from16 v17, v15

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    .line 1207
    :goto_5
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v15, v18

    .line 1210
    :goto_6
    invoke-virtual {v8, v6, v15}, Landroid/view/View;->measure(II)V

    .line 1211
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz v6, :cond_b

    .line 1212
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    iget-wide v14, v6, Landroid/support/constraint/solver/f;->a:J

    const-wide/16 v19, 0x1

    add-long v0, v14, v19

    iput-wide v0, v6, Landroid/support/constraint/solver/f;->a:J

    :cond_b
    if-ne v11, v13, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 1215
    :goto_7
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Z)V

    if-ne v12, v13, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    .line 1216
    :goto_8
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c(Z)V

    .line 1217
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1218
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1221
    :goto_9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    .line 1222
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v16, :cond_f

    .line 1225
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l(I)V

    :cond_f
    if-eqz v17, :cond_10

    .line 1228
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m(I)V

    .line 1231
    :cond_10
    iget-boolean v0, v9, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v0, :cond_11

    .line 1232
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 1234
    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n(I)V

    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method private final b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    if-nez p1, :cond_0

    .line 1121
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    return-object p1

    .line 1123
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-ne p1, p0, :cond_1

    .line 1125
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$a;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method private b()V
    .locals 4

    .line 781
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 785
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 786
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 792
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 793
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->c()V

    :cond_2
    return-void
.end method

.method private b(II)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const-wide/16 v8, 0x1

    const/16 v10, 0x8

    const/4 v12, -0x2

    if-ge v7, v5, :cond_e

    .line 1271
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1272
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_1

    :cond_0
    :goto_1
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_8

    .line 1275
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$a;

    .line 1276
    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1277
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v6, :cond_0

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1280
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e(I)V

    .line 1282
    iget v6, v10, Landroid/support/constraint/ConstraintLayout$a;->width:I

    .line 1283
    iget v13, v10, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v6, :cond_c

    if-nez v13, :cond_3

    goto/16 :goto_7

    :cond_3
    if-ne v6, v12, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    .line 1299
    :goto_2
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    if-ne v13, v12, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    .line 1304
    :goto_3
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 1306
    invoke-virtual {v14, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1307
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz v11, :cond_6

    .line 1308
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    move/from16 v19, v3

    iget-wide v2, v11, Landroid/support/constraint/solver/f;->a:J

    move/from16 v20, v4

    move/from16 v21, v5

    add-long v4, v2, v8

    iput-wide v4, v11, Landroid/support/constraint/solver/f;->a:J

    goto :goto_4

    :cond_6
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    :goto_4
    const/4 v2, -0x2

    if-ne v6, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 1311
    :goto_5
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Z)V

    if-ne v13, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1312
    :goto_6
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c(Z)V

    .line 1313
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1314
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1316
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    .line 1317
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v16, :cond_9

    .line 1320
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l(I)V

    :cond_9
    if-eqz v17, :cond_a

    .line 1323
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m(I)V

    .line 1326
    :cond_a
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v4, :cond_b

    .line 1327
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_b

    .line 1329
    invoke-virtual {v15, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n(I)V

    .line 1333
    :cond_b
    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v10, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v4, :cond_d

    .line 1334
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    .line 1335
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 1286
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/i;->e()V

    .line 1287
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/i;->e()V

    :cond_d
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_e
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    .line 1340
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/c;->N()V

    move/from16 v2, v21

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_2b

    .line 1343
    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1344
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v10, :cond_10

    :cond_f
    :goto_a
    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v10, v19

    move/from16 v24, v20

    const/4 v0, -0x2

    const/4 v2, -0x1

    move-wide/from16 v18, v8

    goto/16 :goto_1a

    .line 1347
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$a;

    .line 1348
    iget-object v6, v5, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1349
    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v7, :cond_f

    iget-boolean v7, v5, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-eqz v7, :cond_11

    goto :goto_a

    .line 1352
    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e(I)V

    .line 1354
    iget v7, v5, Landroid/support/constraint/ConstraintLayout$a;->width:I

    .line 1355
    iget v11, v5, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-eqz v7, :cond_12

    if-eqz v11, :cond_12

    goto :goto_a

    .line 1361
    :cond_12
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v12

    .line 1362
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v13

    .line 1363
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_13

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1364
    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    .line 1365
    :goto_b
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v15

    .line 1366
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v10

    .line 1367
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_14

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1368
    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    :goto_c
    if-nez v7, :cond_15

    if-nez v11, :cond_15

    if-eqz v14, :cond_15

    if-eqz v8, :cond_15

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v10, v19

    move/from16 v24, v20

    const/4 v0, -0x2

    const/4 v2, -0x1

    const-wide/16 v18, 0x1

    goto/16 :goto_1a

    .line 1376
    :cond_15
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/c;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    move/from16 v22, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    .line 1377
    :goto_d
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/c;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v9

    move/from16 v23, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    if-nez v2, :cond_18

    .line 1383
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/i;->e()V

    :cond_18
    if-nez v3, :cond_19

    .line 1386
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/i;->e()V

    :cond_19
    if-nez v7, :cond_1b

    if-eqz v2, :cond_1a

    .line 1389
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d()Z

    move-result v9

    if-eqz v9, :cond_1a

    if-eqz v14, :cond_1a

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/h;->g()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/h;->g()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1390
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/h;->d()F

    move-result v7

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/h;->d()F

    move-result v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 1391
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    move/from16 v9, v20

    .line 1392
    invoke-static {v1, v9, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    move v13, v2

    goto :goto_f

    :cond_1a
    move/from16 v9, v20

    const/4 v12, -0x2

    .line 1395
    invoke-static {v1, v9, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    move v12, v2

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto :goto_11

    :cond_1b
    move/from16 v9, v20

    const/4 v12, -0x2

    const/4 v13, -0x1

    if-ne v7, v13, :cond_1c

    .line 1401
    invoke-static {v1, v9, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    move v13, v2

    move v12, v14

    :goto_f
    const/4 v2, 0x0

    goto :goto_11

    :cond_1c
    if-ne v7, v12, :cond_1d

    const/4 v12, 0x1

    goto :goto_10

    :cond_1d
    const/4 v12, 0x0

    .line 1407
    :goto_10
    invoke-static {v1, v9, v7}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    move/from16 v25, v13

    move v13, v2

    move v2, v12

    move/from16 v12, v25

    :goto_11
    if-nez v11, :cond_1f

    if-eqz v3, :cond_1e

    .line 1411
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e()Z

    move-result v14

    if-eqz v14, :cond_1e

    if-eqz v8, :cond_1e

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/h;->g()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/h;->g()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1412
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/h;->d()F

    move-result v8

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/h;->d()F

    move-result v10

    sub-float/2addr v8, v10

    float-to-int v11, v8

    .line 1413
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    move/from16 v10, v19

    move/from16 v8, p2

    .line 1414
    invoke-static {v8, v10, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    move v15, v3

    goto :goto_12

    :cond_1e
    move/from16 v10, v19

    move/from16 v8, p2

    const/4 v14, -0x2

    .line 1417
    invoke-static {v8, v10, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    move v14, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    goto :goto_14

    :cond_1f
    move/from16 v10, v19

    move/from16 v8, p2

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-ne v11, v15, :cond_20

    .line 1423
    invoke-static {v8, v10, v15}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move v15, v3

    move/from16 v14, v16

    :goto_12
    const/4 v3, 0x0

    goto :goto_14

    :cond_20
    if-ne v11, v14, :cond_21

    const/4 v14, 0x1

    goto :goto_13

    :cond_21
    const/4 v14, 0x0

    .line 1429
    :goto_13
    invoke-static {v8, v10, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v15

    move/from16 v25, v15

    move v15, v3

    move v3, v14

    move/from16 v14, v25

    .line 1432
    :goto_14
    invoke-virtual {v4, v12, v14}, Landroid/view/View;->measure(II)V

    .line 1433
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz v12, :cond_22

    .line 1434
    iget-object v12, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    iget-wide v0, v12, Landroid/support/constraint/solver/f;->a:J

    move/from16 v24, v9

    const-wide/16 v18, 0x1

    add-long v8, v0, v18

    iput-wide v8, v12, Landroid/support/constraint/solver/f;->a:J

    goto :goto_15

    :cond_22
    move/from16 v24, v9

    const-wide/16 v18, 0x1

    :goto_15
    const/4 v0, -0x2

    if-ne v7, v0, :cond_23

    const/4 v1, 0x1

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    .line 1437
    :goto_16
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Z)V

    if-ne v11, v0, :cond_24

    const/4 v1, 0x1

    goto :goto_17

    :cond_24
    const/4 v1, 0x0

    .line 1438
    :goto_17
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c(Z)V

    .line 1439
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1440
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1442
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    .line 1443
    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v2, :cond_25

    .line 1446
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l(I)V

    :cond_25
    if-eqz v3, :cond_26

    .line 1449
    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m(I)V

    :cond_26
    if-eqz v13, :cond_27

    .line 1452
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    goto :goto_18

    .line 1454
    :cond_27
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/i;->c()V

    :goto_18
    if-eqz v15, :cond_28

    .line 1457
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    goto :goto_19

    .line 1459
    :cond_28
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/i;->c()V

    .line 1462
    :goto_19
    iget-boolean v1, v5, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v1, :cond_29

    .line 1463
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 1465
    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n(I)V

    goto :goto_1a

    :cond_29
    const/4 v2, -0x1

    :cond_2a
    :goto_1a
    add-int/lit8 v3, v23, 0x1

    move-wide/from16 v8, v18

    move/from16 v2, v22

    move/from16 v20, v24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v19, v10

    const/16 v10, 0x8

    goto/16 :goto_9

    :cond_2b
    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 7

    .line 585
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/c;->a(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    if-eqz p1, :cond_7

    .line 589
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 590
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 592
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 593
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 594
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    goto :goto_2

    .line 595
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 596
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    goto :goto_2

    .line 597
    :cond_1
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 598
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    goto :goto_2

    .line 599
    :cond_2
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 600
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    goto :goto_2

    .line 601
    :cond_3
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 602
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    goto :goto_2

    .line 603
    :cond_4
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_5

    .line 604
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 606
    :try_start_0
    new-instance v5, Landroid/support/constraint/a;

    invoke-direct {v5}, Landroid/support/constraint/a;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    .line 607
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/a;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 609
    :catch_0
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    .line 611
    :goto_1
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->p:I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 616
    :cond_7
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->n:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/c;->a(I)V

    return-void
.end method

.method private c()V
    .locals 26

    move-object/from16 v0, p0

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    .line 806
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 808
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 809
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    .line 810
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 814
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_3

    .line 823
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 824
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 828
    :cond_2
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 831
    :cond_3
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->p:I

    if-eq v5, v4, :cond_5

    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_5

    .line 833
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 834
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->p:I

    if-ne v7, v8, :cond_4

    instance-of v7, v6, Landroid/support/constraint/Constraints;

    if-eqz v7, :cond_4

    .line 835
    check-cast v6, Landroid/support/constraint/Constraints;

    invoke-virtual {v6}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/a;

    move-result-object v6

    iput-object v6, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 839
    :cond_5
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    if-eqz v5, :cond_6

    .line 840
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    invoke-virtual {v5, v0}, Landroid/support/constraint/a;->a(Landroid/support/constraint/ConstraintLayout;)V

    .line 843
    :cond_6
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/c;->S()V

    .line 845
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_7

    .line 848
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintHelper;

    .line 849
    invoke-virtual {v7, v0}, Landroid/support/constraint/ConstraintHelper;->a(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_5
    if-ge v5, v2, :cond_9

    .line 854
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 855
    instance-of v7, v6, Landroid/support/constraint/Placeholder;

    if-eqz v7, :cond_8

    .line 856
    check-cast v6, Landroid/support/constraint/Placeholder;

    invoke-virtual {v6, v0}, Landroid/support/constraint/Placeholder;->a(Landroid/support/constraint/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_6
    if-ge v5, v2, :cond_2f

    .line 860
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 861
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    if-nez v13, :cond_a

    goto/16 :goto_13

    .line 865
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/support/constraint/ConstraintLayout$a;

    .line 866
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$a;->a()V

    .line 867
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    if-eqz v7, :cond_b

    .line 868
    iput-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$a;->am:Z

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    .line 875
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 876
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "id/"

    .line 877
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 878
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 884
    :catch_1
    :cond_c
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e(I)V

    .line 885
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x8

    .line 886
    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e(I)V

    .line 888
    :cond_d
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Ljava/lang/Object;)V

    .line 889
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/c;->c(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 891
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v6, :cond_f

    .line 892
    :cond_e
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_f
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_13

    .line 896
    check-cast v13, Landroid/support/constraint/solver/widgets/d;

    .line 897
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->ai:I

    .line 898
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->aj:I

    .line 899
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->ak:F

    .line 900
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v7, :cond_10

    .line 901
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->a:I

    .line 902
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->b:I

    .line 903
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->c:F

    :cond_10
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_11

    .line 906
    invoke-virtual {v13, v9}, Landroid/support/constraint/solver/widgets/d;->e(F)V

    goto/16 :goto_13

    :cond_11
    if-eq v6, v4, :cond_12

    .line 908
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/d;->q(I)V

    goto/16 :goto_13

    :cond_12
    if-eq v8, v4, :cond_2e

    .line 910
    invoke-virtual {v13, v8}, Landroid/support/constraint/solver/widgets/d;->r(I)V

    goto/16 :goto_13

    .line 912
    :cond_13
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->d:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->e:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->f:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->g:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->h:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->i:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->j:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->k:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->l:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->R:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->m:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-eq v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v6, v4, :cond_2e

    .line 932
    :cond_14
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->ab:I

    .line 933
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->ac:I

    .line 934
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->ad:I

    .line 935
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$a;->ae:I

    .line 936
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->af:I

    .line 937
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->ag:I

    .line 938
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->ah:F

    .line 940
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_19

    .line 943
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->d:I

    .line 944
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->e:I

    .line 945
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->f:I

    .line 946
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$a;->g:I

    .line 947
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 948
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->v:I

    .line 949
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->z:F

    if-ne v3, v4, :cond_16

    if-ne v6, v4, :cond_16

    .line 952
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->q:I

    if-eq v11, v4, :cond_15

    .line 953
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->q:I

    goto :goto_8

    .line 954
    :cond_15
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->p:I

    if-eq v11, v4, :cond_16

    .line 955
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->p:I

    :cond_16
    :goto_8
    move/from16 v25, v6

    move v6, v3

    move/from16 v3, v25

    if-ne v9, v4, :cond_18

    if-ne v10, v4, :cond_18

    .line 959
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->r:I

    if-eq v11, v4, :cond_17

    .line 960
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->r:I

    goto :goto_9

    .line 961
    :cond_17
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->s:I

    if-eq v11, v4, :cond_18

    .line 962
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$a;->s:I

    :cond_18
    :goto_9
    move v12, v7

    move/from16 v16, v8

    goto :goto_a

    :cond_19
    move v3, v8

    move/from16 v16, v12

    move v12, v11

    :goto_a
    move v11, v10

    move v10, v15

    move v15, v9

    .line 968
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->m:I

    if-eq v7, v4, :cond_1a

    .line 969
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->m:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 971
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->o:F

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->n:I

    invoke-virtual {v13, v3, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    goto/16 :goto_10

    :cond_1a
    if-eq v6, v4, :cond_1c

    .line 976
    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 978
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v10

    move-object v10, v3

    move v3, v11

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_b

    :cond_1b
    move/from16 v17, v10

    move v3, v11

    :goto_b
    move v6, v3

    goto :goto_c

    :cond_1c
    move/from16 v17, v10

    move v6, v11

    if-eq v3, v4, :cond_1d

    .line 983
    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 985
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_1d
    :goto_c
    if-eq v15, v4, :cond_1e

    .line 993
    invoke-direct {v0, v15}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 995
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_d

    :cond_1e
    if-eq v6, v4, :cond_1f

    .line 1000
    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 1002
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1009
    :cond_1f
    :goto_d
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->h:I

    if-eq v3, v4, :cond_20

    .line 1010
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->h:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 1012
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->u:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_e

    .line 1016
    :cond_20
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->i:I

    if-eq v3, v4, :cond_21

    .line 1017
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->i:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 1019
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->u:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1026
    :cond_21
    :goto_e
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->j:I

    if-eq v3, v4, :cond_22

    .line 1027
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->j:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 1029
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->w:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_f

    .line 1033
    :cond_22
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->k:I

    if-eq v3, v4, :cond_23

    .line 1034
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->k:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 1036
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->w:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1043
    :cond_23
    :goto_f
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->l:I

    if-eq v3, v4, :cond_24

    .line 1044
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->l:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1045
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->l:I

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->b(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_24

    if-eqz v3, :cond_24

    .line 1046
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout$a;

    if-eqz v7, :cond_24

    .line 1047
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$a;

    const/4 v7, 0x1

    .line 1048
    iput-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1049
    iput-boolean v7, v3, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    .line 1050
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v18

    .line 1051
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1052
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 1053
    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1056
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1057
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    :cond_24
    const/4 v3, 0x0

    move/from16 v15, v17

    cmpl-float v6, v15, v3

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_25

    cmpl-float v6, v15, v7

    if-eqz v6, :cond_25

    .line 1062
    invoke-virtual {v13, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(F)V

    .line 1064
    :cond_25
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->A:F

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_26

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->A:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_26

    .line 1065
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->A:F

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(F)V

    :cond_26
    :goto_10
    if-eqz v1, :cond_28

    .line 1069
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    if-ne v3, v4, :cond_27

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->R:I

    if-eq v3, v4, :cond_28

    .line 1071
    :cond_27
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->R:I

    invoke-virtual {v13, v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(II)V

    .line 1075
    :cond_28
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-nez v3, :cond_2a

    .line 1076
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->width:I

    if-ne v3, v4, :cond_29

    .line 1077
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1078
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->leftMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    .line 1079
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->rightMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    goto :goto_11

    .line 1081
    :cond_29
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1082
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    goto :goto_11

    .line 1085
    :cond_2a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1086
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->width:I

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    .line 1088
    :goto_11
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-nez v3, :cond_2c

    .line 1089
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->height:I

    if-ne v3, v4, :cond_2b

    .line 1090
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1091
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->topMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    .line 1092
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->bottomMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    const/4 v3, 0x0

    goto :goto_12

    .line 1094
    :cond_2b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1095
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    goto :goto_12

    :cond_2c
    const/4 v3, 0x0

    .line 1098
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1099
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->height:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    .line 1102
    :goto_12
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v6, :cond_2d

    .line 1103
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Ljava/lang/String;)V

    .line 1105
    :cond_2d
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->E:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c(F)V

    .line 1106
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->F:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d(F)V

    .line 1107
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->G:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o(I)V

    .line 1108
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->H:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p(I)V

    .line 1109
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->I:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->K:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->M:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->O:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(IIIF)V

    .line 1112
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->J:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->L:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$a;->N:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->P:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(IIIF)V

    :cond_2e
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_2f
    return-void
.end method

.method private c(II)V
    .locals 9

    .line 1739
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1740
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1741
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1742
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1744
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1745
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1747
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1748
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1752
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq v0, v7, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    :goto_0
    move p1, v8

    goto :goto_1

    .line 1764
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_1

    .line 1760
    :cond_1
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_0

    .line 1755
    :cond_2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_1
    if-eq v1, v7, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    :goto_2
    move p2, v8

    goto :goto_3

    .line 1778
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 1774
    :cond_4
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_2

    .line 1769
    :cond_5
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1782
    :goto_3
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/c;->j(I)V

    .line 1783
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/c;->k(I)V

    .line 1784
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1785
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    .line 1786
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/c;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1787
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    .line 1788
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/c;->j(I)V

    .line 1789
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/c;->k(I)V

    return-void
.end method

.method private d()V
    .locals 5

    .line 1241
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1243
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1244
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_0

    .line 1245
    check-cast v3, Landroid/support/constraint/Placeholder;

    invoke-virtual {v3, p0}, Landroid/support/constraint/Placeholder;->b(Landroid/support/constraint/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1252
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 1253
    invoke-virtual {v2, p0}, Landroid/support/constraint/ConstraintHelper;->c(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/constraint/ConstraintLayout$a;
    .locals 2

    .line 1921
    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$a;
    .locals 2

    .line 1913
    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1138
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$a;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 1956
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 550
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 551
    check-cast p2, Ljava/lang/String;

    .line 552
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 532
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 533
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 534
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 536
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 537
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 539
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 541
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 542
    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    .line 1801
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/c;->L()V

    .line 1802
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz p1, :cond_0

    .line 1803
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    iget-wide v0, p1, Landroid/support/constraint/solver/f;->c:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p1, Landroid/support/constraint/solver/f;->c:J

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 625
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1937
    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$a;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1964
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1965
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1966
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1967
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 1972
    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1973
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 1976
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1977
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1978
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 1979
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1980
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1981
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 1982
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 1983
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 1984
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float/2addr v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float/2addr v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 1989
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 1990
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 1991
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 1992
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 1993
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 1994
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 1995
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 1996
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 1997
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 475
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->a()Landroid/support/constraint/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 475
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$a;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1929
    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 777
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 767
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 730
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 720
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1906
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/c;->H()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1816
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1817
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 1819
    invoke-virtual {p0, p4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1820
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    .line 1821
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1823
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 1828
    :cond_0
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$a;->aa:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1831
    :cond_1
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s()I

    move-result v0

    .line 1832
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    .line 1833
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v3

    add-int/2addr v3, v0

    .line 1834
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    add-int/2addr v1, v2

    .line 1856
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1857
    instance-of v4, p5, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_2

    .line 1858
    check-cast p5, Landroid/support/constraint/Placeholder;

    .line 1859
    invoke-virtual {p5}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 1861
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1862
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1866
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 1869
    iget-object p2, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintHelper;

    .line 1870
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintHelper;->b(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1496
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1497
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1498
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1499
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1501
    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v3, v7, :cond_1

    if-ne v5, v7, :cond_1

    .line 1502
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    if-ne v4, v9, :cond_1

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 1504
    :cond_1
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v3, v9, :cond_2

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->f:I

    if-ne v5, v9, :cond_2

    move v9, v11

    goto :goto_0

    :cond_2
    move v9, v10

    :goto_0
    if-eqz v9, :cond_3

    .line 1505
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->c:I

    if-ne v4, v12, :cond_3

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->d:I

    :cond_3
    const/high16 v12, -0x80000000

    if-eqz v9, :cond_4

    if-ne v3, v12, :cond_4

    if-ne v5, v7, :cond_4

    .line 1507
    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    if-lt v4, v13, :cond_4

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    :cond_4
    if-eqz v9, :cond_5

    if-ne v3, v7, :cond_5

    if-ne v5, v12, :cond_5

    .line 1510
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    if-ne v4, v9, :cond_5

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 1518
    :cond_5
    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 1519
    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 1520
    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->c:I

    .line 1521
    iput v6, v0, Landroid/support/constraint/ConstraintLayout;->d:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    .line 1524
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v4

    .line 1526
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/c;->f(I)V

    .line 1527
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/c;->g(I)V

    .line 1528
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/c;->c(I)V

    .line 1529
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/c;->d(I)V

    .line 1531
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_7

    .line 1532
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v6

    if-ne v6, v11, :cond_6

    move v6, v11

    goto :goto_1

    :cond_6
    move v6, v10

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/c;->a(Z)V

    .line 1535
    :cond_7
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->c(II)V

    .line 1536
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v5

    .line 1537
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v6

    .line 1538
    iget-boolean v9, v0, Landroid/support/constraint/ConstraintLayout;->m:Z

    if-eqz v9, :cond_8

    .line 1539
    iput-boolean v10, v0, Landroid/support/constraint/ConstraintLayout;->m:Z

    .line 1540
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->b()V

    .line 1543
    :cond_8
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->n:I

    const/16 v12, 0x8

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_9

    move v9, v11

    goto :goto_2

    :cond_9
    move v9, v10

    :goto_2
    if-eqz v9, :cond_a

    .line 1546
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/c;->M()V

    .line 1547
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v13, v5, v6}, Landroid/support/constraint/solver/widgets/c;->e(II)V

    .line 1548
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->b(II)V

    goto :goto_3

    .line 1550
    :cond_a
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->a(II)V

    .line 1552
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->d()V

    .line 1561
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v13

    if-lez v13, :cond_b

    const-string v13, "First pass"

    .line 1562
    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    .line 1567
    :cond_b
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v4, v14

    .line 1570
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v3, v14

    if-lez v13, :cond_2a

    .line 1578
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/c;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v10, :cond_c

    move v10, v11

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    .line 1580
    :goto_4
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/c;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_d

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 1582
    :goto_5
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v15

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1583
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v15

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v16, v8

    move v15, v14

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_6
    const-wide/16 v18, 0x1

    if-ge v8, v13, :cond_20

    .line 1585
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1586
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v12, v20

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_e

    move/from16 v24, v3

    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v21, v13

    :goto_7
    move/from16 v2, v16

    move/from16 v5, v17

    const/4 v3, -0x1

    goto/16 :goto_11

    .line 1590
    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v21, v13

    move-object/from16 v13, v20

    check-cast v13, Landroid/support/constraint/ConstraintLayout$a;

    move/from16 v22, v6

    .line 1591
    iget-boolean v6, v13, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v13, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    if-eqz v6, :cond_f

    goto/16 :goto_10

    .line 1594
    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v23, v5

    const/16 v5, 0x8

    if-ne v6, v5, :cond_10

    :goto_8
    move/from16 v24, v3

    goto :goto_7

    :cond_10
    if-eqz v9, :cond_11

    .line 1598
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/i;->g()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1599
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/i;->g()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    .line 1605
    :cond_11
    iget v5, v13, Landroid/support/constraint/ConstraintLayout$a;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_12

    iget-boolean v5, v13, Landroid/support/constraint/ConstraintLayout$a;->V:Z

    if-eqz v5, :cond_12

    .line 1606
    iget v5, v13, Landroid/support/constraint/ConstraintLayout$a;->width:I

    invoke-static {v1, v3, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_9

    .line 1608
    :cond_12
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1610
    :goto_9
    iget v6, v13, Landroid/support/constraint/ConstraintLayout$a;->height:I

    const/4 v1, -0x2

    if-ne v6, v1, :cond_13

    iget-boolean v1, v13, Landroid/support/constraint/ConstraintLayout$a;->W:Z

    if-eqz v1, :cond_13

    .line 1611
    iget v1, v13, Landroid/support/constraint/ConstraintLayout$a;->height:I

    invoke-static {v2, v4, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_a

    .line 1613
    :cond_13
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1617
    :goto_a
    invoke-virtual {v12, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1618
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz v1, :cond_14

    .line 1619
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    iget-wide v5, v1, Landroid/support/constraint/solver/f;->b:J

    move/from16 v24, v3

    add-long v2, v5, v18

    iput-wide v2, v1, Landroid/support/constraint/solver/f;->b:J

    goto :goto_b

    :cond_14
    move/from16 v24, v3

    .line 1624
    :goto_b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1625
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1627
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v3

    if-eq v1, v3, :cond_17

    .line 1628
    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    if-eqz v9, :cond_15

    .line 1630
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    :cond_15
    if-eqz v10, :cond_16

    .line 1632
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w()I

    move-result v1

    if-le v1, v15, :cond_16

    .line 1633
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w()I

    move-result v1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1634
    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    add-int/2addr v1, v3

    .line 1635
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v15, v1

    :cond_16
    const/4 v14, 0x1

    .line 1639
    :cond_17
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    if-eq v2, v1, :cond_1b

    .line 1640
    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    if-eqz v9, :cond_18

    .line 1642
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    :cond_18
    if-eqz v11, :cond_19

    .line 1644
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x()I

    move-result v1

    move/from16 v2, v16

    if-le v1, v2, :cond_1a

    .line 1645
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x()I

    move-result v1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1646
    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    add-int/2addr v1, v3

    .line 1647
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v1

    goto :goto_c

    :cond_19
    move/from16 v2, v16

    :cond_1a
    move/from16 v16, v2

    :goto_c
    move/from16 v2, v16

    const/4 v14, 0x1

    goto :goto_d

    :cond_1b
    move/from16 v2, v16

    .line 1651
    :goto_d
    iget-boolean v1, v13, Landroid/support/constraint/ConstraintLayout$a;->X:Z

    if-eqz v1, :cond_1c

    .line 1652
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1d

    .line 1653
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A()I

    move-result v5

    if-eq v1, v5, :cond_1d

    .line 1654
    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n(I)V

    const/4 v14, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, -0x1

    .line 1659
    :cond_1d
    :goto_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_1e

    .line 1660
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v5, v17

    invoke-static {v5, v1}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v17

    goto :goto_f

    :cond_1e
    move/from16 v5, v17

    :goto_f
    move/from16 v16, v2

    goto :goto_12

    :cond_1f
    :goto_10
    move/from16 v24, v3

    move/from16 v23, v5

    goto/16 :goto_7

    :goto_11
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_12
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v21

    move/from16 v6, v22

    move/from16 v5, v23

    move/from16 v3, v24

    move/from16 v1, p1

    move/from16 v2, p2

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v12, 0x8

    goto/16 :goto_6

    :cond_20
    move/from16 v24, v3

    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v21, v13

    move/from16 v2, v16

    move/from16 v5, v17

    if-eqz v14, :cond_24

    .line 1664
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    move/from16 v3, v23

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    .line 1665
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    move/from16 v3, v22

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    if-eqz v9, :cond_21

    .line 1667
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/c;->N()V

    :cond_21
    const-string v1, "2nd pass"

    .line 1669
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    .line 1671
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v1

    if-ge v1, v15, :cond_22

    .line 1672
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    const/4 v11, 0x1

    goto :goto_13

    :cond_22
    const/4 v11, 0x0

    .line 1675
    :goto_13
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v1

    if-ge v1, v2, :cond_23

    .line 1676
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    const/4 v11, 0x1

    :cond_23
    if-eqz v11, :cond_24

    const-string v1, "3rd pass"

    .line 1680
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->a(Ljava/lang/String;)V

    :cond_24
    move/from16 v1, v21

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2b

    .line 1684
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1685
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_27

    :cond_25
    const/16 v8, 0x8

    :cond_26
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_15

    .line 1689
    :cond_27
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v8

    if-ne v7, v8, :cond_28

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v8

    if-eq v7, v8, :cond_25

    .line 1690
    :cond_28
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_26

    .line 1691
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1692
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v3

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1693
    invoke-virtual {v6, v7, v3}, Landroid/view/View;->measure(II)V

    .line 1694
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    if-eqz v3, :cond_29

    .line 1695
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->t:Landroid/support/constraint/solver/f;

    iget-wide v6, v3, Landroid/support/constraint/solver/f;->b:J

    add-long v10, v6, v18

    iput-wide v10, v3, Landroid/support/constraint/solver/f;->b:J

    :cond_29
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2a
    move/from16 v24, v3

    const/4 v5, 0x0

    .line 1703
    :cond_2b
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v1

    add-int v1, v1, v24

    .line 1704
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v2

    add-int/2addr v2, v4

    .line 1706
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2e

    move/from16 v3, p1

    .line 1707
    invoke-static {v1, v3, v5}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v5, 0x10

    move/from16 v4, p2

    .line 1708
    invoke-static {v2, v4, v3}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 1712
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1713
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->l:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1714
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/c;->I()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_2c

    or-int/2addr v1, v4

    .line 1717
    :cond_2c
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/c;->J()Z

    move-result v3

    if-eqz v3, :cond_2d

    or-int/2addr v2, v4

    .line 1720
    :cond_2d
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1721
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 1722
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    goto :goto_16

    .line 1724
    :cond_2e
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1725
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 1726
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->s:I

    :goto_16
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 650
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 651
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/d;

    if-nez v0, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    .line 653
    new-instance v1, Landroid/support/constraint/solver/widgets/d;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/d;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 654
    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->Y:Z

    .line 655
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->al:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/d;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$a;->S:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/d;->a(I)V

    .line 658
    :cond_1
    instance-of v0, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 659
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 660
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->a()V

    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$a;

    .line 662
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$a;->Z:Z

    .line 663
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 677
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 679
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 680
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 681
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/c;->d(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 682
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 684
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3113
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 3114
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->m:Z

    const/4 v0, -0x1

    .line 3116
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->r:I

    .line 3117
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->s:I

    .line 3118
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    .line 3119
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    const/4 v0, 0x0

    .line 3120
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 3121
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/a;)V
    .locals 0

    .line 1945
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->o:Landroid/support/constraint/a;

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 579
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 581
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 752
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    if-ne p1, v0, :cond_0

    return-void

    .line 755
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->l:I

    .line 756
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 739
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    if-ne p1, v0, :cond_0

    return-void

    .line 742
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    .line 743
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 706
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    if-ne p1, v0, :cond_0

    return-void

    .line 709
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    .line 710
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 693
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_0

    return-void

    .line 696
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    .line 697
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1896
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/c;->a(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
