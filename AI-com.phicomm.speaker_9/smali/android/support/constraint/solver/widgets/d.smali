.class public Landroid/support/constraint/solver/widgets/d;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# instance fields
.field protected ab:F

.field protected ac:I

.field protected ad:I

.field private ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private af:I

.field private ag:Z

.field private ah:I

.field private ai:Landroid/support/constraint/solver/widgets/g;

.field private aj:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    .line 40
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    .line 42
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    .line 44
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/d;->ag:Z

    .line 45
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ah:I

    .line 47
    new-instance v1, Landroid/support/constraint/solver/widgets/g;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/g;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/d;->ai:Landroid/support/constraint/solver/widgets/g;

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->aj:I

    .line 51
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public H()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    return v0
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .line 137
    sget-object v0, Landroid/support/constraint/solver/widgets/d$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 147
    :pswitch_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    if-nez v0, :cond_0

    .line 148
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 140
    :pswitch_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 159
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    .line 89
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    .line 93
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget p1, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 99
    :goto_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/d;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 102
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/solver/e;)V
    .locals 9

    .line 250
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/c;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 255
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 256
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/constraint/solver/widgets/d;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v5

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 257
    :goto_0
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    if-nez v6, :cond_3

    .line 258
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 259
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 260
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v4

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    .line 262
    :cond_3
    :goto_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 265
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    invoke-virtual {p1, v0, v1, v6, v4}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-eqz v3, :cond_6

    .line 267
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2

    .line 269
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    if-eq v0, v6, :cond_5

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 272
    iget v6, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-eqz v3, :cond_6

    .line 274
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 275
    invoke-virtual {p1, v2, v0, v5, v7}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_2

    .line 277
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 281
    iget v7, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    iget-boolean v8, p0, Landroid/support/constraint/solver/widgets/d;->ag:Z

    move-object v3, p1

    .line 282
    invoke-static/range {v3 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/b;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)V
    .locals 6

    .line 213
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->H()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 218
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 219
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 220
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    if-eq v0, v2, :cond_1

    .line 221
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 222
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_0

    .line 223
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    if-eq v0, v2, :cond_2

    .line 224
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 225
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_0

    .line 226
    :cond_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_6

    .line 227
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 229
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 233
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 234
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    if-eq v0, v2, :cond_4

    .line 235
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 236
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto :goto_0

    .line 237
    :cond_4
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    if-eq v0, v2, :cond_5

    .line 238
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 239
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto :goto_0

    .line 240
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_6

    .line 241
    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 242
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    .line 243
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/d;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/e;)V
    .locals 3

    .line 289
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/d;->ae:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result p1

    .line 293
    iget v0, p0, Landroid/support/constraint/solver/widgets/d;->af:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/d;->f(I)V

    .line 295
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/d;->g(I)V

    .line 296
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/d;->i(I)V

    .line 297
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/d;->h(I)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/d;->f(I)V

    .line 300
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/d;->g(I)V

    .line 301
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/d;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/d;->h(I)V

    .line 302
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/d;->i(I)V

    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 173
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    const/4 p1, -0x1

    .line 174
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    .line 175
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 181
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    .line 182
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    .line 183
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 189
    iput v1, p0, Landroid/support/constraint/solver/widgets/d;->ab:F

    .line 190
    iput v0, p0, Landroid/support/constraint/solver/widgets/d;->ac:I

    .line 191
    iput p1, p0, Landroid/support/constraint/solver/widgets/d;->ad:I

    :cond_0
    return-void
.end method
