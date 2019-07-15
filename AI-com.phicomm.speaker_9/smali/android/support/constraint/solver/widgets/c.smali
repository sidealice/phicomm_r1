.class public Landroid/support/constraint/solver/widgets/c;
.super Landroid/support/constraint/solver/widgets/l;
.source "ConstraintWidgetContainer.java"


# instance fields
.field protected ab:Landroid/support/constraint/solver/e;

.field ac:I

.field ad:I

.field ae:I

.field af:I

.field ag:I

.field ah:I

.field ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field ak:I

.field private am:Z

.field private an:Landroid/support/constraint/solver/widgets/k;

.field private ao:I

.field private ap:Z

.field private aq:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/l;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->am:Z

    .line 46
    new-instance v1, Landroid/support/constraint/solver/e;

    invoke-direct {v1}, Landroid/support/constraint/solver/e;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    .line 55
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    .line 56
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    const/4 v1, 0x4

    .line 58
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 59
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x3

    .line 61
    iput v1, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    .line 63
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->ap:Z

    .line 64
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->aq:Z

    .line 155
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ak:I

    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, 0x0

    .line 654
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    .line 655
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    return-void
.end method

.method private e(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2

    const/4 v0, 0x0

    .line 694
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    if-ge v0, v1, :cond_1

    .line 695
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 700
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 702
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->aj:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    aput-object p1, v0, v1

    .line 703
    iget p1, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    return-void
.end method

.method private f(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2

    const/4 v0, 0x0

    .line 713
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    if-ge v0, v1, :cond_1

    .line 714
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 719
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 721
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->ai:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    aput-object p1, v0, v1

    .line 722
    iget p1, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    return-void
.end method


# virtual methods
.method public H()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    return v0
.end method

.method public I()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->ap:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->aq:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/c;->am:Z

    return v0
.end method

.method public L()V
    .locals 18

    move-object/from16 v1, p0

    .line 287
    iget v2, v1, Landroid/support/constraint/solver/widgets/c;->G:I

    .line 288
    iget v3, v1, Landroid/support/constraint/solver/widgets/c;->H:I

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 291
    iput-boolean v5, v1, Landroid/support/constraint/solver/widgets/c;->ap:Z

    .line 292
    iput-boolean v5, v1, Landroid/support/constraint/solver/widgets/c;->aq:Z

    .line 294
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v7, :cond_1

    .line 295
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->an:Landroid/support/constraint/solver/widgets/k;

    if-nez v7, :cond_0

    .line 296
    new-instance v7, Landroid/support/constraint/solver/widgets/k;

    invoke-direct {v7, v1}, Landroid/support/constraint/solver/widgets/k;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v7, v1, Landroid/support/constraint/solver/widgets/c;->an:Landroid/support/constraint/solver/widgets/k;

    .line 298
    :cond_0
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->an:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/k;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 303
    iget v7, v1, Landroid/support/constraint/solver/widgets/c;->ac:I

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/c;->f(I)V

    .line 304
    iget v7, v1, Landroid/support/constraint/solver/widgets/c;->ad:I

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/c;->g(I)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->E()V

    .line 306
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v7}, Landroid/support/constraint/solver/e;->g()Landroid/support/constraint/solver/c;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/c;)V

    goto :goto_0

    .line 308
    :cond_1
    iput v5, v1, Landroid/support/constraint/solver/widgets/c;->G:I

    .line 309
    iput v5, v1, Landroid/support/constraint/solver/widgets/c;->H:I

    .line 312
    :goto_0
    iget v7, v1, Landroid/support/constraint/solver/widgets/c;->ao:I

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 313
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/c;->q(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->O()V

    .line 316
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->P()V

    .line 317
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    iput-boolean v9, v7, Landroid/support/constraint/solver/e;->c:Z

    goto :goto_1

    .line 319
    :cond_3
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    iput-boolean v5, v7, Landroid/support/constraint/solver/e;->c:Z

    .line 323
    :goto_1
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v9

    .line 324
    iget-object v10, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v5

    .line 332
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->T()V

    .line 336
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_5

    .line 338
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 339
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/l;

    if-eqz v14, :cond_4

    .line 340
    check-cast v13, Landroid/support/constraint/solver/widgets/l;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/l;->L()V

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    move v13, v5

    move v14, v13

    move v12, v9

    :goto_3
    if-eqz v12, :cond_13

    add-int/2addr v13, v9

    .line 350
    :try_start_0
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v15}, Landroid/support/constraint/solver/e;->b()V

    .line 360
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/c;->c(Landroid/support/constraint/solver/e;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v15, :cond_6

    .line 362
    :try_start_1
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v12}, Landroid/support/constraint/solver/e;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v15, v12

    :goto_4
    move-object v12, v0

    .line 365
    invoke-static {v12}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 366
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION : "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    :goto_5
    const/4 v5, 0x2

    if-eqz v15, :cond_8

    .line 369
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    sget-object v9, Landroid/support/constraint/solver/widgets/f;->a:[Z

    invoke-virtual {v1, v8, v9}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/e;[Z)V

    :cond_7
    :goto_6
    move v9, v5

    :goto_7
    const/16 v5, 0x8

    goto :goto_9

    .line 371
    :cond_8
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/c;->b(Landroid/support/constraint/solver/e;)V

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v11, :cond_7

    .line 373
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 374
    iget-object v12, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aget-object v12, v12, v15

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v15, :cond_9

    .line 375
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v12

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result v15

    if-ge v12, v15, :cond_9

    .line 376
    sget-object v8, Landroid/support/constraint/solver/widgets/f;->a:[Z

    const/4 v12, 0x1

    aput-boolean v12, v8, v5

    goto :goto_6

    :cond_9
    const/4 v12, 0x1

    .line 379
    iget-object v15, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v15, v15, v12

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v5, :cond_a

    .line 380
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result v9

    if-ge v5, v9, :cond_a

    .line 381
    sget-object v5, Landroid/support/constraint/solver/widgets/f;->a:[Z

    const/4 v9, 0x2

    aput-boolean v12, v5, v9

    goto :goto_7

    :cond_a
    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_8

    :goto_9
    if-ge v13, v5, :cond_d

    .line 388
    sget-object v8, Landroid/support/constraint/solver/widgets/f;->a:[Z

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v8, v11, :cond_b

    .line 393
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 394
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v16

    add-int v5, v5, v16

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 395
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v15

    add-int/2addr v5, v15

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v8, v8, 0x1

    const/16 v5, 0x8

    goto :goto_a

    .line 397
    :cond_b
    iget v5, v1, Landroid/support/constraint/solver/widgets/c;->L:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 398
    iget v8, v1, Landroid/support/constraint/solver/widgets/c;->M:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 399
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v9, :cond_c

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v9

    if-ge v9, v5, :cond_c

    .line 404
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    .line 405
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aput-object v9, v5, v12

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_b

    :cond_c
    move v9, v14

    const/4 v5, 0x0

    .line 410
    :goto_b
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v12, :cond_e

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v12

    if-ge v12, v8, :cond_e

    .line 415
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    .line 416
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_c

    :cond_d
    move v9, v14

    const/4 v5, 0x0

    .line 424
    :cond_e
    :goto_c
    iget v8, v1, Landroid/support/constraint/solver/widgets/c;->L:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v12

    if-le v8, v12, :cond_f

    .line 429
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    .line 430
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/4 v5, 0x1

    const/4 v9, 0x1

    .line 434
    :cond_f
    iget v8, v1, Landroid/support/constraint/solver/widgets/c;->M:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v12

    if-le v8, v12, :cond_10

    .line 439
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    .line 440
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x1

    aput-object v8, v5, v12

    move v5, v12

    move v9, v5

    goto :goto_d

    :cond_10
    const/4 v12, 0x1

    :goto_d
    if-nez v9, :cond_12

    .line 446
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x0

    aget-object v8, v8, v14

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v15, :cond_11

    if-lez v4, :cond_11

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v8

    if-le v8, v4, :cond_11

    .line 451
    iput-boolean v12, v1, Landroid/support/constraint/solver/widgets/c;->ap:Z

    .line 453
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v8, v5, v14

    .line 454
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    move v5, v12

    move v9, v5

    .line 458
    :cond_11
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v12

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v14, :cond_12

    if-lez v6, :cond_12

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v8

    if-le v8, v6, :cond_12

    .line 463
    iput-boolean v12, v1, Landroid/support/constraint/solver/widgets/c;->aq:Z

    .line 465
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v8, v5, v12

    .line 466
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_e

    :cond_12
    move v12, v5

    move v14, v9

    :goto_e
    const/4 v5, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 476
    :cond_13
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/c;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_14

    .line 477
    iget v2, v1, Landroid/support/constraint/solver/widgets/c;->L:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->o()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 478
    iget v3, v1, Landroid/support/constraint/solver/widgets/c;->M:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->q()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 480
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/c;->an:Landroid/support/constraint/solver/widgets/k;

    invoke-virtual {v4, v1}, Landroid/support/constraint/solver/widgets/k;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 481
    iget v4, v1, Landroid/support/constraint/solver/widgets/c;->ac:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/support/constraint/solver/widgets/c;->ae:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/c;->h(I)V

    .line 482
    iget v2, v1, Landroid/support/constraint/solver/widgets/c;->ad:I

    add-int/2addr v3, v2

    iget v2, v1, Landroid/support/constraint/solver/widgets/c;->af:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/support/constraint/solver/widgets/c;->i(I)V

    goto :goto_f

    .line 484
    :cond_14
    iput v2, v1, Landroid/support/constraint/solver/widgets/c;->G:I

    .line 485
    iput v3, v1, Landroid/support/constraint/solver/widgets/c;->H:I

    :goto_f
    if-eqz v14, :cond_15

    .line 488
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 489
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aput-object v7, v2, v3

    .line 502
    :cond_15
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v2}, Landroid/support/constraint/solver/e;->g()Landroid/support/constraint/solver/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/c;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->R()Landroid/support/constraint/solver/widgets/c;

    move-result-object v2

    if-ne v1, v2, :cond_16

    .line 504
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/c;->D()V

    :cond_16
    return-void
.end method

.method public M()V
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/c;->O()V

    .line 510
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/c;->b(I)V

    return-void
.end method

.method public N()V
    .locals 4

    .line 514
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    .line 515
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 521
    invoke-virtual {v0, v3, v2}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    .line 522
    invoke-virtual {v1, v3, v2}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/widgets/h;F)V

    return-void
.end method

.method public O()V
    .locals 3

    .line 549
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 550
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/c;->b()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public P()V
    .locals 1

    const/16 v0, 0x8

    .line 566
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/c;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/c;->b(I)V

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/c;->N()V

    return-void
.end method

.method public Q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 104
    iput p1, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    return-void
.end method

.method public a(Landroid/support/constraint/solver/e;[Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 211
    aput-boolean v0, p2, v1

    .line 212
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/c;->b(Landroid/support/constraint/solver/e;)V

    .line 213
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 215
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 216
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/e;)V

    .line 217
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v0

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 218
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 219
    aput-boolean v7, p2, v1

    .line 221
    :cond_0
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v7

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1

    .line 222
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 223
    aput-boolean v7, p2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 668
    :goto_0
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_0

    .line 672
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/c;->e(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 677
    :goto_1
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_2

    .line 681
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 683
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/c;->f(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/c;->am:Z

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 269
    invoke-super {p0, p1}, Landroid/support/constraint/solver/widgets/l;->b(I)V

    .line 270
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 272
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/support/constraint/solver/e;)Z
    .locals 7

    .line 169
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/e;)V

    .line 170
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 173
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/c;->al:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 174
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/c;

    if-eqz v5, :cond_3

    .line 175
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v1

    .line 176
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v6, v3

    .line 177
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    .line 178
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 180
    :cond_0
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1

    .line 181
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 183
    :cond_1
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/e;)V

    .line 184
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2

    .line 185
    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 187
    :cond_2
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_4

    .line 188
    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {p0, p1, v4}, Landroid/support/constraint/solver/widgets/f;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 192
    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/e;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_5
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ag:I

    if-lez v0, :cond_6

    .line 197
    invoke-static {p0, p1, v1}, Landroid/support/constraint/solver/widgets/b;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;I)V

    .line 199
    :cond_6
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ah:I

    if-lez v0, :cond_7

    .line 200
    invoke-static {p0, p1, v3}, Landroid/support/constraint/solver/widgets/b;->a(Landroid/support/constraint/solver/widgets/c;Landroid/support/constraint/solver/e;I)V

    :cond_7
    return v3
.end method

.method public e(II)V
    .locals 2

    .line 540
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->c:Landroid/support/constraint/solver/widgets/i;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->c:Landroid/support/constraint/solver/widgets/i;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    .line 543
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/c;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/c;->d:Landroid/support/constraint/solver/widgets/i;

    if-eqz p1, :cond_1

    .line 544
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/c;->d:Landroid/support/constraint/solver/widgets/i;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/i;->a(I)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/c;->ab:Landroid/support/constraint/solver/e;

    invoke-virtual {v0}, Landroid/support/constraint/solver/e;->b()V

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ac:I

    .line 139
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ae:I

    .line 140
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->ad:I

    .line 141
    iput v0, p0, Landroid/support/constraint/solver/widgets/c;->af:I

    .line 142
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/l;->f()V

    return-void
.end method

.method public q(I)Z
    .locals 1

    .line 122
    iget v0, p0, Landroid/support/constraint/solver/widgets/c;->ao:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
