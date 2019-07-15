.class Landroid/support/constraint/solver/widgets/b;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method static a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 49
    iget v1, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    .line 50
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 53
    iget v2, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    .line 54
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_0
    if-ge v0, v3, :cond_3

    .line 57
    aget-object v4, v2, v0

    const/4 v5, 0x4

    .line 58
    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/c;->q(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/b;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {p0, p1, p2, v1, v4}, Landroid/support/constraint/solver/widgets/b;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p4

    .line 90
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v12, 0x0

    if-nez p2, :cond_4

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->K()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v5, v11

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    .line 100
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_1

    .line 102
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v7, v5, :cond_2

    :cond_1
    move-object v6, v12

    :cond_2
    if-eqz v6, :cond_3

    move-object v5, v6

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move-object v5, v11

    :cond_5
    const/4 v2, 0x2

    const/4 v6, 0x0

    if-nez p2, :cond_9

    .line 123
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 124
    :goto_2
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-ne v8, v4, :cond_7

    move v8, v4

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    .line 125
    :goto_3
    iget v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-ne v13, v2, :cond_8

    :goto_4
    move v2, v4

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    move/from16 v26, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move-object v13, v11

    move-object v4, v12

    move-object v8, v4

    move-object v14, v8

    move-object v15, v14

    const/4 v6, 0x0

    move v7, v2

    const/4 v2, 0x0

    goto :goto_8

    .line 127
    :cond_9
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-nez v7, :cond_a

    move v7, v4

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 128
    :goto_6
    iget v8, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-ne v8, v4, :cond_b

    move v8, v4

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    .line 129
    :goto_7
    iget v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-ne v13, v2, :cond_8

    goto :goto_4

    :goto_8
    if-nez v2, :cond_1d

    .line 141
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v12, v3, p2

    .line 142
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v3

    const/16 v12, 0x8

    if-eq v3, v12, :cond_e

    if-eqz v14, :cond_c

    .line 144
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v13, v3, p2

    :cond_c
    if-nez v8, :cond_d

    move-object v8, v13

    :cond_d
    move-object v14, v13

    .line 152
    :cond_e
    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    const/16 v18, 0x4

    if-nez v1, :cond_10

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v19, v18

    goto :goto_a

    :cond_10
    :goto_9
    const/16 v19, 0x1

    .line 157
    :goto_a
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v20

    .line 159
    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_11

    if-eq v13, v11, :cond_11

    .line 160
    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v12

    add-int v20, v20, v12

    :cond_11
    move/from16 v12, v20

    if-eqz v7, :cond_12

    if-eq v13, v11, :cond_12

    if-eq v13, v8, :cond_12

    move/from16 v27, v2

    move-object/from16 v28, v14

    const/4 v2, 0x6

    goto :goto_b

    :cond_12
    if-eqz v16, :cond_13

    if-eqz v1, :cond_13

    move/from16 v27, v2

    move-object/from16 v28, v14

    move/from16 v2, v18

    goto :goto_b

    :cond_13
    move/from16 v27, v2

    move-object/from16 v28, v14

    move/from16 v2, v19

    .line 171
    :goto_b
    iget-object v14, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v14, :cond_15

    if-ne v13, v8, :cond_14

    .line 173
    iget-object v14, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v8

    iget-object v8, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v30, v5

    const/4 v5, 0x5

    invoke-virtual {v9, v14, v8, v12, v5}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_c

    :cond_14
    move-object/from16 v30, v5

    move-object/from16 v29, v8

    .line 176
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    const/4 v14, 0x6

    invoke-virtual {v9, v5, v8, v12, v14}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 179
    :goto_c
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v9, v5, v3, v12, v2}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto :goto_d

    :cond_15
    move-object/from16 v30, v5

    move-object/from16 v29, v8

    .line 184
    :goto_d
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v12, 0x0

    aput-object v12, v2, p2

    .line 185
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_18

    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_18

    add-int/lit8 v6, v6, 0x1

    .line 188
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aget v2, v2, p2

    add-float v26, v26, v2

    if-nez v15, :cond_16

    move-object v15, v13

    goto :goto_e

    .line 192
    :cond_16
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v13, v2, p2

    :goto_e
    if-eqz v1, :cond_17

    .line 196
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_17
    move-object v4, v13

    :cond_18
    if-eqz v1, :cond_19

    .line 203
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/c;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    const/4 v5, 0x0

    const/4 v8, 0x6

    invoke-virtual {v9, v2, v3, v5, v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_f

    :cond_19
    const/4 v5, 0x0

    .line 209
    :goto_f
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1a

    .line 211
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 212
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1a

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v13, :cond_1b

    :cond_1a
    move-object v2, v12

    :cond_1b
    if-eqz v2, :cond_1c

    move-object v13, v2

    move/from16 v2, v27

    goto :goto_10

    :cond_1c
    const/4 v2, 0x1

    :goto_10
    move-object/from16 v14, v28

    move-object/from16 v8, v29

    move-object/from16 v5, v30

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v30, v5

    const/4 v5, 0x0

    if-eqz v14, :cond_1e

    .line 227
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1e

    .line 228
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    .line 229
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v5, v3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 230
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    const/4 v5, 0x5

    .line 229
    invoke-virtual {v9, v4, v3, v2, v5}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_11

    :cond_1e
    const/4 v5, 0x5

    :goto_11
    if-eqz v1, :cond_1f

    .line 236
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/c;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v1, p3, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v3, v1

    .line 238
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    const/4 v3, 0x6

    .line 236
    invoke-virtual {v9, v0, v2, v1, v3}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_1f
    if-lez v6, :cond_25

    move-object v0, v15

    :goto_12
    if-eqz v0, :cond_25

    .line 246
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eqz v1, :cond_24

    .line 248
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aget v19, v2, p2

    .line 249
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aget v21, v2, p2

    .line 250
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 251
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 252
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 253
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v5, v4

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    if-nez p2, :cond_20

    .line 259
    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    .line 260
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    goto :goto_13

    .line 262
    :cond_20
    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    .line 263
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    :goto_13
    const/4 v12, 0x3

    if-eqz v0, :cond_21

    if-ne v0, v12, :cond_22

    :cond_21
    if-eqz v5, :cond_23

    if-ne v5, v12, :cond_22

    goto :goto_14

    :cond_22
    const/4 v0, 0x0

    goto :goto_15

    :cond_23
    :goto_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_24

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v0

    move-object/from16 v18, v0

    move/from16 v20, v26

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v4

    .line 272
    invoke-virtual/range {v18 .. v25}, Landroid/support/constraint/solver/b;->a(FFFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/b;

    .line 274
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    :cond_24
    move-object v0, v1

    const/4 v5, 0x5

    const/4 v12, 0x0

    goto :goto_12

    :cond_25
    if-eqz v8, :cond_2c

    if-eq v8, v14, :cond_26

    if-eqz v7, :cond_2c

    .line 295
    :cond_26
    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 296
    iget-object v1, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 297
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_27

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_16

    :cond_27
    const/4 v3, 0x0

    .line 298
    :goto_16
    iget-object v4, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_28

    iget-object v4, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v4

    goto :goto_17

    :cond_28
    const/4 v5, 0x0

    :goto_17
    if-ne v8, v14, :cond_29

    .line 300
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 301
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_29
    if-eqz v3, :cond_2b

    if-eqz v5, :cond_2b

    if-nez p2, :cond_2a

    move-object/from16 v11, v30

    .line 306
    iget v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    :goto_18
    move v4, v2

    goto :goto_19

    :cond_2a
    move-object/from16 v11, v30

    .line 308
    iget v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->P:F

    goto :goto_18

    .line 310
    :goto_19
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v6

    .line 311
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v7

    .line 312
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v10

    move-object v12, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_2a

    :cond_2b
    move-object v12, v8

    goto/16 :goto_2a

    :cond_2c
    move-object v12, v8

    if-eqz v16, :cond_3a

    if-eqz v12, :cond_3a

    move-object v0, v12

    move-object v8, v0

    :goto_1a
    if-eqz v8, :cond_48

    .line 320
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    if-nez v7, :cond_2e

    if-ne v8, v14, :cond_2d

    goto :goto_1b

    :cond_2d
    move-object v15, v7

    move-object/from16 v18, v8

    goto/16 :goto_22

    .line 322
    :cond_2e
    :goto_1b
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 323
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 324
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2f

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1c

    :cond_2f
    const/4 v3, 0x0

    :goto_1c
    if-eq v0, v8, :cond_30

    .line 326
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1d

    :cond_30
    if-ne v8, v12, :cond_32

    if-ne v0, v8, :cond_32

    .line 328
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_31

    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_1d

    :cond_31
    const/4 v3, 0x0

    .line 334
    :cond_32
    :goto_1d
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    .line 335
    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    if-eqz v7, :cond_33

    .line 338
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    move-object/from16 v31, v7

    .line 339
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v32, v6

    .line 340
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object v15, v6

    move-object/from16 v6, v32

    goto :goto_1f

    :cond_33
    move-object/from16 v31, v7

    .line 342
    iget-object v6, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_34

    .line 344
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v33, v6

    goto :goto_1e

    :cond_34
    move-object/from16 v33, v6

    const/4 v7, 0x0

    .line 346
    :goto_1e
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object v15, v6

    move-object/from16 v6, v33

    :goto_1f
    if-eqz v6, :cond_35

    .line 350
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v6

    add-int/2addr v4, v6

    :cond_35
    if-eqz v0, :cond_36

    .line 353
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    add-int/2addr v1, v0

    :cond_36
    if-eqz v2, :cond_39

    if-eqz v3, :cond_39

    if-eqz v7, :cond_39

    if-eqz v15, :cond_39

    if-ne v8, v12, :cond_37

    .line 358
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    move v6, v0

    goto :goto_20

    :cond_37
    move v6, v1

    :goto_20
    if-ne v8, v14, :cond_38

    .line 362
    iget-object v0, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    move/from16 v18, v0

    goto :goto_21

    :cond_38
    move/from16 v18, v4

    :goto_21
    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v19, 0x4

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v5, v7

    move-object v6, v15

    move-object/from16 v15, v31

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    .line 364
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_22

    :cond_39
    move-object/from16 v18, v8

    move-object/from16 v15, v31

    :goto_22
    move-object v8, v15

    move-object/from16 v0, v18

    goto/16 :goto_1a

    :cond_3a
    if-eqz v17, :cond_48

    if-eqz v12, :cond_48

    move-object v0, v12

    move-object v8, v0

    :goto_23
    if-eqz v8, :cond_44

    .line 377
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eq v8, v12, :cond_43

    if-eq v8, v14, :cond_43

    if-eqz v1, :cond_43

    if-ne v1, v14, :cond_3b

    const/4 v7, 0x0

    goto :goto_24

    :cond_3b
    move-object v7, v1

    .line 382
    :goto_24
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 383
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 384
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_3c

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 385
    :cond_3c
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 389
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    .line 390
    iget-object v5, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v5

    if-eqz v7, :cond_3e

    .line 393
    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    move-object/from16 v34, v7

    .line 394
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v35, v7

    .line 395
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_3d

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_26

    :cond_3d
    const/4 v7, 0x0

    goto :goto_26

    :cond_3e
    move-object/from16 v34, v7

    .line 397
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_3f

    .line 399
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v36, v6

    goto :goto_25

    :cond_3f
    move-object/from16 v36, v6

    const/4 v7, 0x0

    .line 401
    :goto_25
    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v35, v7

    move-object v7, v6

    move-object/from16 v6, v36

    :goto_26
    if-eqz v6, :cond_40

    .line 405
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v6

    add-int/2addr v5, v6

    :cond_40
    move v15, v5

    if-eqz v0, :cond_41

    .line 408
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    add-int/2addr v1, v0

    :cond_41
    move v4, v1

    if-eqz v2, :cond_42

    if-eqz v3, :cond_42

    if-eqz v35, :cond_42

    if-eqz v7, :cond_42

    const/high16 v5, 0x3f000000    # 0.5f

    const/16 v18, 0x4

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    const/4 v6, 0x5

    move v3, v4

    move v4, v5

    move-object/from16 v5, v35

    move-object v6, v7

    move-object/from16 v19, v34

    move v7, v15

    move-object v15, v8

    move/from16 v8, v18

    .line 411
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_27

    :cond_42
    move-object v15, v8

    move-object/from16 v19, v34

    :goto_27
    move-object/from16 v8, v19

    goto :goto_28

    :cond_43
    move-object v15, v8

    move-object v8, v1

    :goto_28
    move-object v0, v15

    goto/16 :goto_23

    .line 419
    :cond_44
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 420
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 421
    iget-object v2, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    .line 422
    iget-object v2, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v3

    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_47

    if-eq v12, v14, :cond_46

    .line 425
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    const/4 v8, 0x5

    invoke-virtual {v9, v2, v1, v0, v8}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    :cond_45
    move-object/from16 v37, v13

    move v13, v8

    goto :goto_29

    :cond_46
    const/4 v8, 0x5

    if-eqz v11, :cond_45

    .line 427
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 428
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v15

    const/16 v18, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v15

    move-object/from16 v37, v13

    move v13, v8

    move/from16 v8, v18

    .line 427
    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_29

    :cond_47
    move-object/from16 v37, v13

    const/4 v13, 0x5

    :goto_29
    if-eqz v11, :cond_49

    if-eq v12, v14, :cond_49

    .line 432
    iget-object v0, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v13}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto :goto_2b

    :cond_48
    :goto_2a
    move-object/from16 v37, v13

    :cond_49
    :goto_2b
    if-nez v16, :cond_4a

    if-eqz v17, :cond_51

    :cond_4a
    if-eqz v12, :cond_51

    .line 439
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 440
    iget-object v1, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 441
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4b

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2c

    :cond_4b
    const/4 v3, 0x0

    .line 442
    :goto_2c
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_4c

    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v11, v37

    goto :goto_2d

    :cond_4c
    move-object/from16 v11, v37

    const/4 v4, 0x0

    :goto_2d
    if-eq v11, v14, :cond_4e

    .line 444
    iget-object v4, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v2

    .line 445
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_4d

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_2e

    :cond_4d
    const/4 v4, 0x0

    :cond_4e
    :goto_2e
    move-object v5, v4

    if-ne v12, v14, :cond_4f

    .line 448
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 449
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v2

    :cond_4f
    if-eqz v3, :cond_51

    if-eqz v5, :cond_51

    const/high16 v4, 0x3f000000    # 0.5f

    .line 453
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v6

    if-nez v14, :cond_50

    goto :goto_2f

    :cond_50
    move-object v11, v14

    .line 458
    :goto_2f
    iget-object v7, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v7

    .line 459
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    const/4 v10, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_51
    return-void
.end method
