.class public Landroid/support/constraint/solver/widgets/f;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/f;->a:[Z

    return-void
.end method

.method static a(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 17

    move-object/from16 v0, p1

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g()V

    .line 153
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    .line 154
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    .line 155
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v3

    .line 156
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 162
    :goto_0
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 163
    invoke-static {v0, v7}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    .line 165
    :goto_1
    iget v10, v1, Landroid/support/constraint/solver/widgets/h;->g:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroid/support/constraint/solver/widgets/h;->g:I

    if-eq v10, v12, :cond_13

    .line 167
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    .line 214
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 215
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 216
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_3

    .line 220
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_3

    .line 222
    :cond_4
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_3

    .line 226
    :cond_5
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_3

    .line 228
    :cond_6
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 232
    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_3

    .line 234
    :cond_8
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 239
    :cond_9
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 240
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 241
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 242
    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 243
    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    goto/16 :goto_3

    .line 246
    :cond_a
    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 247
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 248
    invoke-virtual {v1, v3, v9}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    int-to-float v9, v7

    .line 249
    invoke-virtual {v3, v1, v9}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 250
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    goto/16 :goto_3

    .line 169
    :cond_b
    :goto_2
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    .line 170
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 171
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_c

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_3

    .line 175
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_3

    .line 177
    :cond_d
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_f

    .line 178
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 179
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_e

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_3

    .line 183
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto :goto_3

    .line 185
    :cond_f
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    .line 186
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 187
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    if-eqz v6, :cond_10

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto :goto_3

    .line 192
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto :goto_3

    .line 194
    :cond_11
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    .line 195
    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 196
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_12

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto :goto_3

    .line 203
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 258
    :cond_13
    :goto_3
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_14

    .line 259
    invoke-static {v0, v8}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v16, v8

    goto :goto_4

    :cond_14
    const/16 v16, 0x0

    .line 261
    :goto_4
    iget v1, v2, Landroid/support/constraint/solver/widgets/h;->g:I

    if-eq v1, v12, :cond_26

    iget v1, v4, Landroid/support/constraint/solver/widgets/h;->g:I

    if-eq v1, v12, :cond_26

    .line 264
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v3, :cond_1e

    if-eqz v16, :cond_15

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v1

    if-ne v1, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v16, :cond_26

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    .line 323
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 324
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 325
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_a

    .line 329
    :cond_16
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 331
    :cond_17
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_a

    .line 335
    :cond_18
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 337
    :cond_19
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v0, v1

    .line 341
    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 343
    :cond_1b
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 348
    :cond_1c
    iget v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

    .line 349
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 350
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 351
    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 352
    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    goto/16 :goto_a

    .line 354
    :cond_1d
    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 355
    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 356
    invoke-virtual {v2, v4, v3}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    int-to-float v3, v1

    .line 357
    invoke-virtual {v4, v2, v3}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    .line 359
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v1, :cond_26

    .line 360
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 266
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    .line 267
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 268
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_1f

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto :goto_6

    .line 272
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    .line 274
    :goto_6
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 275
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 276
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 277
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    neg-int v0, v0

    .line 276
    invoke-virtual {v2, v8, v1, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 279
    :cond_20
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_22

    .line 280
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 281
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_21

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto :goto_7

    .line 285
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    .line 287
    :goto_7
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v1, :cond_26

    .line 288
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto/16 :goto_a

    .line 290
    :cond_22
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_24

    .line 291
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 292
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_23

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    goto :goto_8

    .line 296
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;I)V

    .line 298
    :goto_8
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v1, :cond_26

    .line 299
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    goto :goto_a

    .line 301
    :cond_24
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 302
    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    .line 303
    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/h;->b(I)V

    if-eqz v6, :cond_25

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;ILandroid/support/constraint/solver/widgets/i;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h()Landroid/support/constraint/solver/widgets/i;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/i;->a(Landroid/support/constraint/solver/widgets/j;)V

    goto :goto_9

    .line 310
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/h;->b(Landroid/support/constraint/solver/widgets/h;F)V

    .line 313
    :goto_9
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v1, :cond_26

    .line 314
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(ILandroid/support/constraint/solver/widgets/h;I)V

    :cond_26
    :goto_a
    return-void
.end method

.method static a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    .line 60
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    sub-int/2addr v1, v2

    .line 67
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c(II)V

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    .line 79
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d:I

    sub-int/2addr p0, v1

    .line 86
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 91
    :cond_1
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->f:Landroid/support/constraint/solver/SolverVariable;

    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b:I

    .line 96
    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d(II)V

    :cond_3
    return-void
.end method

.method private static a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 3

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 113
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 114
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    aget-object p0, p0, v1

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    .line 122
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    if-eqz p1, :cond_4

    return v2

    .line 125
    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    if-nez p1, :cond_5

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    .line 129
    :cond_6
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    if-eqz p1, :cond_7

    return v2

    .line 132
    :cond_7
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    if-nez p1, :cond_9

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method static a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;IILandroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 394
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_3

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->K()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v5, p4

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 404
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_0

    .line 406
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 407
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v7, v5, :cond_1

    :cond_0
    move-object v6, v2

    :cond_1
    if-eqz v6, :cond_2

    move-object v5, v6

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    move-object/from16 v5, p4

    :cond_4
    const/4 v1, 0x2

    if-nez p2, :cond_8

    .line 427
    iget v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-nez v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 428
    :goto_1
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-ne v7, v4, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 429
    :goto_2
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    if-ne v5, v1, :cond_7

    :goto_3
    move v1, v4

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 431
    :cond_8
    iget v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-nez v6, :cond_9

    move v6, v4

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    .line 432
    :goto_4
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-ne v7, v4, :cond_a

    move v7, v4

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 433
    :goto_5
    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    if-ne v5, v1, :cond_7

    goto :goto_3

    :goto_6
    move-object/from16 v9, p4

    move-object v5, v2

    move-object v10, v5

    move-object v11, v10

    move-object/from16 v17, v11

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    if-nez v8, :cond_1b

    .line 449
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v4, p2

    .line 450
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v4

    const/16 v3, 0x8

    if-eq v4, v3, :cond_f

    if-eqz v10, :cond_b

    .line 452
    iget-object v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v9, v4, p2

    :cond_b
    if-nez v11, :cond_c

    move-object v11, v9

    :cond_c
    add-int/lit8 v12, v12, 0x1

    if-nez p2, :cond_d

    .line 460
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v14, v4

    goto :goto_8

    .line 462
    :cond_d
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v14, v4

    :goto_8
    if-eq v9, v11, :cond_e

    .line 465
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v14, v4

    .line 467
    :cond_e
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v15, v4

    .line 468
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v10, p3, 0x1

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v15, v4

    move-object v10, v9

    .line 471
    :cond_f
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    .line 474
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v2, v4, p2

    .line 475
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k()I

    move-result v4

    if-eq v4, v3, :cond_17

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_17

    add-int/lit8 v13, v13, 0x1

    if-nez p2, :cond_12

    .line 480
    iget v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    return v3

    :cond_10
    const/4 v3, 0x0

    .line 482
    iget v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    if-nez v4, :cond_11

    iget v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    if-eqz v4, :cond_14

    :cond_11
    return v3

    :cond_12
    const/4 v3, 0x0

    .line 486
    iget v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    if-eqz v4, :cond_13

    return v3

    .line 488
    :cond_13
    iget v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    if-nez v3, :cond_16

    iget v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    if-eqz v3, :cond_14

    goto :goto_a

    .line 492
    :cond_14
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aget v3, v3, p2

    add-float v16, v16, v3

    if-nez v17, :cond_15

    move-object/from16 v17, v9

    goto :goto_9

    .line 496
    :cond_15
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v9, v3, p2

    :goto_9
    move-object v5, v9

    goto :goto_b

    :cond_16
    :goto_a
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_17
    :goto_b
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_18

    .line 504
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 505
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_18

    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v4, v9, :cond_19

    :cond_18
    move-object v3, v2

    :cond_19
    if-eqz v3, :cond_1a

    move-object v9, v3

    goto :goto_c

    :cond_1a
    const/4 v8, 0x1

    :goto_c
    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v3, p4

    .line 519
    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    .line 520
    iget-object v4, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v4

    .line 522
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    if-eqz v8, :cond_3f

    iget-object v8, v4, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    if-nez v8, :cond_1c

    goto/16 :goto_1c

    .line 528
    :cond_1c
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    iget v8, v8, Landroid/support/constraint/solver/widgets/h;->i:I

    const/4 v3, 0x1

    if-eq v8, v3, :cond_1d

    iget-object v8, v4, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    iget v8, v8, Landroid/support/constraint/solver/widgets/h;->i:I

    if-eq v8, v3, :cond_1d

    const/4 v3, 0x0

    return v3

    :cond_1d
    const/4 v3, 0x0

    if-lez v13, :cond_1e

    if-eq v13, v12, :cond_1e

    return v3

    :cond_1e
    if-nez v1, :cond_20

    if-nez v6, :cond_20

    if-eqz v7, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    goto :goto_f

    :cond_20
    :goto_d
    if-eqz v11, :cond_21

    .line 542
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    int-to-float v3, v3

    goto :goto_e

    :cond_21
    const/4 v3, 0x0

    :goto_e
    if-eqz v10, :cond_22

    .line 545
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 549
    :cond_22
    :goto_f
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    iget v8, v8, Landroid/support/constraint/solver/widgets/h;->f:F

    .line 550
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/h;->c:Landroid/support/constraint/solver/widgets/h;

    iget v4, v4, Landroid/support/constraint/solver/widgets/h;->f:F

    cmpg-float v17, v8, v4

    if-gez v17, :cond_23

    sub-float/2addr v4, v8

    sub-float/2addr v4, v14

    goto :goto_10

    :cond_23
    sub-float v4, v8, v4

    sub-float/2addr v4, v14

    :goto_10
    const-wide/16 v18, 0x1

    if-lez v13, :cond_2c

    if-ne v13, v12, :cond_2c

    .line 559
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v7, :cond_24

    const/4 v1, 0x0

    return v1

    :cond_24
    add-float/2addr v4, v14

    sub-float/2addr v4, v15

    if-eqz v6, :cond_25

    sub-float/2addr v15, v3

    sub-float/2addr v4, v15

    :cond_25
    if-eqz v6, :cond_26

    .line 570
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v8, v1

    .line 571
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-eqz v1, :cond_26

    .line 573
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v8, v1

    :cond_26
    :goto_11
    if-eqz v11, :cond_2b

    .line 577
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v1, :cond_27

    .line 578
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v6, v1, Landroid/support/constraint/solver/f;->B:J

    move-object/from16 v20, v2

    sub-long v2, v6, v18

    iput-wide v2, v1, Landroid/support/constraint/solver/f;->B:J

    .line 579
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->s:J

    add-long v6, v2, v18

    iput-wide v6, v1, Landroid/support/constraint/solver/f;->s:J

    .line 580
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->y:J

    add-long v6, v2, v18

    iput-wide v6, v1, Landroid/support/constraint/solver/f;->y:J

    goto :goto_12

    :cond_27
    move-object/from16 v20, v2

    .line 582
    :goto_12
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-nez v1, :cond_29

    if-ne v11, v10, :cond_28

    goto :goto_13

    :cond_28
    move-object/from16 v9, v20

    const/4 v3, 0x0

    goto :goto_14

    :cond_29
    :goto_13
    int-to-float v2, v13

    div-float v2, v4, v2

    const/4 v3, 0x0

    cmpl-float v6, v16, v3

    if-lez v6, :cond_2a

    .line 586
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aget v2, v2, p2

    mul-float/2addr v2, v4

    div-float v2, v2, v16

    .line 588
    :cond_2a
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v8, v6

    .line 589
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    move-object/from16 v9, v20

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 591
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    add-float/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 593
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 594
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 596
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    :goto_14
    move-object v11, v1

    move-object v2, v9

    goto/16 :goto_11

    :cond_2b
    const/4 v1, 0x1

    return v1

    :cond_2c
    move-object v9, v2

    cmpg-float v2, v4, v14

    if-gez v2, :cond_2d

    const/4 v2, 0x0

    return v2

    :cond_2d
    if-eqz v1, :cond_33

    sub-float/2addr v4, v3

    .line 611
    invoke-virtual/range {p4 .. p4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y()F

    move-result v1

    mul-float/2addr v4, v1

    add-float/2addr v8, v4

    :goto_15
    if-eqz v11, :cond_32

    .line 613
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v1, :cond_2e

    .line 614
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->B:J

    sub-long v6, v2, v18

    iput-wide v6, v1, Landroid/support/constraint/solver/f;->B:J

    .line 615
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->s:J

    add-long v6, v2, v18

    iput-wide v6, v1, Landroid/support/constraint/solver/f;->s:J

    .line 616
    sget-object v1, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->y:J

    add-long v6, v2, v18

    iput-wide v6, v1, Landroid/support/constraint/solver/f;->y:J

    .line 618
    :cond_2e
    iget-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    if-nez v1, :cond_2f

    if-ne v11, v10, :cond_31

    :cond_2f
    if-nez p2, :cond_30

    .line 622
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v2

    int-to-float v2, v2

    goto :goto_16

    .line 624
    :cond_30
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v2

    int-to-float v2, v2

    .line 626
    :goto_16
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    .line 627
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v3

    iget-object v4, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    invoke-virtual {v3, v4, v8}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 629
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v3

    iget-object v4, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    add-float/2addr v8, v2

    invoke-virtual {v3, v4, v8}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 631
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 632
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 634
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    :cond_31
    move-object v11, v1

    goto :goto_15

    :cond_32
    const/4 v0, 0x1

    goto/16 :goto_1b

    :cond_33
    if-nez v6, :cond_34

    if-eqz v7, :cond_32

    :cond_34
    if-eqz v6, :cond_35

    sub-float/2addr v4, v3

    goto :goto_17

    :cond_35
    if-eqz v7, :cond_36

    sub-float/2addr v4, v3

    :cond_36
    :goto_17
    add-int/lit8 v1, v12, 0x1

    int-to-float v1, v1

    div-float v1, v4, v1

    if-eqz v7, :cond_38

    const/4 v2, 0x1

    if-le v12, v2, :cond_37

    add-int/lit8 v1, v12, -0x1

    int-to-float v1, v1

    div-float v1, v4, v1

    goto :goto_18

    :cond_37
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    :cond_38
    :goto_18
    add-float v2, v8, v1

    if-eqz v7, :cond_39

    const/4 v3, 0x1

    if-le v12, v3, :cond_39

    .line 655
    iget-object v2, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    :cond_39
    if-eqz v6, :cond_3a

    if-eqz v11, :cond_3a

    .line 659
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    :cond_3a
    :goto_19
    if-eqz v11, :cond_32

    .line 663
    sget-object v3, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    if-eqz v3, :cond_3b

    .line 664
    sget-object v3, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v6, v3, Landroid/support/constraint/solver/f;->B:J

    sub-long v12, v6, v18

    iput-wide v12, v3, Landroid/support/constraint/solver/f;->B:J

    .line 665
    sget-object v3, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v6, v3, Landroid/support/constraint/solver/f;->s:J

    add-long v12, v6, v18

    iput-wide v12, v3, Landroid/support/constraint/solver/f;->s:J

    .line 666
    sget-object v3, Landroid/support/constraint/solver/e;->g:Landroid/support/constraint/solver/f;

    iget-wide v6, v3, Landroid/support/constraint/solver/f;->y:J

    add-long v12, v6, v18

    iput-wide v12, v3, Landroid/support/constraint/solver/f;->y:J

    .line 668
    :cond_3b
    iget-object v3, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v3, p2

    if-nez v3, :cond_3c

    if-ne v11, v10, :cond_3e

    :cond_3c
    if-nez p2, :cond_3d

    .line 672
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1a

    .line 674
    :cond_3d
    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v4

    int-to-float v4, v4

    .line 676
    :goto_1a
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    invoke-virtual {v6, v7, v2}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 678
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/h;->e:Landroid/support/constraint/solver/widgets/h;

    add-float v8, v2, v4

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 680
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 681
    iget-object v6, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    add-float/2addr v4, v1

    add-float/2addr v2, v4

    :cond_3e
    move-object v11, v3

    goto :goto_19

    :goto_1b
    return v0

    :cond_3f
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method
