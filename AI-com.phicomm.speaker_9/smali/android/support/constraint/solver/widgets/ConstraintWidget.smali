.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroid/support/constraint/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field public static N:F = 0.5f


# instance fields
.field protected A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field C:I

.field D:I

.field protected E:F

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field protected L:I

.field protected M:I

.field O:F

.field P:F

.field Q:Z

.field R:Z

.field S:I

.field T:I

.field U:Z

.field V:Z

.field W:[F

.field protected X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field Z:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public a:I

.field aa:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private ab:[I

.field private ac:F

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:Ljava/lang/Object;

.field private ak:I

.field private al:I

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field public b:I

.field c:Landroid/support/constraint/solver/widgets/i;

.field d:Landroid/support/constraint/solver/widgets/i;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:F

.field j:I

.field k:I

.field l:F

.field m:Z

.field n:Z

.field o:I

.field p:F

.field q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a:I

    .line 69
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    .line 78
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    .line 79
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i:F

    .line 81
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    .line 82
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    .line 83
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l:F

    .line 87
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 88
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    const/4 v2, 0x2

    .line 90
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    const/4 v3, 0x0

    .line 91
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ac:F

    .line 141
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 142
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 143
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 144
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 145
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 146
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 147
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 148
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x6

    .line 156
    new-array v4, v4, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    .line 162
    new-array v4, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    .line 165
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 168
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 169
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 170
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    .line 171
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    .line 174
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    .line 175
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    .line 178
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad:I

    .line 179
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ae:I

    .line 180
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->af:I

    .line 181
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ag:I

    .line 184
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->I:I

    .line 185
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->J:I

    .line 188
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    .line 201
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->N:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    .line 202
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->N:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->P:F

    .line 210
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ak:I

    .line 213
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    .line 215
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->am:Ljava/lang/String;

    .line 216
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->an:Ljava/lang/String;

    .line 230
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    .line 231
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    .line 235
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    .line 237
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->X:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 238
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Y:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 240
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Z:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 241
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->aa:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 392
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private H()V
    .locals 2

    .line 440
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/constraint/solver/e;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v1, p11

    move/from16 v2, p12

    move-object/from16 v13, p7

    .line 2448
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object/from16 v8, p8

    .line 2449
    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2450
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2451
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v14

    move-object/from16 v20, v14

    .line 2453
    iget-boolean v14, v10, Landroid/support/constraint/solver/e;->c:Z

    const-wide/16 v15, 0x1

    if-eqz v14, :cond_2

    .line 2454
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v14

    iget v14, v14, Landroid/support/constraint/solver/widgets/h;->i:I

    const/4 v11, 0x1

    if-ne v14, v11, :cond_2

    .line 2455
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v14

    iget v14, v14, Landroid/support/constraint/solver/widgets/h;->i:I

    if-ne v14, v11, :cond_2

    .line 2456
    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2457
    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v1

    iget-wide v2, v1, Landroid/support/constraint/solver/f;->s:J

    add-long v5, v2, v15

    iput-wide v5, v1, Landroid/support/constraint/solver/f;->s:J

    .line 2459
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    .line 2460
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2462
    invoke-virtual {v10, v12, v7, v1, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_1
    return-void

    .line 2467
    :cond_2
    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2468
    invoke-static {}, Landroid/support/constraint/solver/e;->a()Landroid/support/constraint/solver/f;

    move-result-object v11

    iget-wide v1, v11, Landroid/support/constraint/solver/f;->B:J

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    add-long v6, v1, v15

    iput-wide v6, v11, Landroid/support/constraint/solver/f;->B:J

    goto :goto_0

    :cond_3
    move-object/from16 v22, v6

    move-object/from16 v21, v7

    .line 2471
    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v1

    .line 2472
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v2

    .line 2473
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v6

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v2, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    if-eqz v6, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    if-eqz p14, :cond_7

    const/4 v14, 0x3

    goto :goto_2

    :cond_7
    move/from16 v14, p16

    .line 2485
    :goto_2
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->b:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v11, 0x4

    packed-switch v15, :pswitch_data_0

    :goto_3
    :pswitch_0
    const/4 v15, 0x0

    goto :goto_4

    :pswitch_1
    if-ne v14, v11, :cond_8

    goto :goto_3

    :cond_8
    const/4 v15, 0x1

    .line 2503
    :goto_4
    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/16 v8, 0x8

    if-ne v11, v8, :cond_9

    const/4 v8, 0x0

    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    move/from16 v8, p10

    move v11, v15

    :goto_5
    if-eqz p20, :cond_b

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-nez v6, :cond_a

    move/from16 v12, p9

    .line 2511
    invoke-virtual {v10, v9, v12}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    .line 2513
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v12

    move/from16 v24, v2

    move/from16 v23, v6

    move-object/from16 v6, v22

    const/4 v2, 0x6

    invoke-virtual {v10, v9, v6, v12, v2}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v24, v2

    move/from16 v23, v6

    move-object/from16 v6, v22

    const/4 v2, 0x6

    :goto_7
    if-nez v11, :cond_f

    if-eqz p6, :cond_d

    move/from16 v25, v11

    move-object/from16 v12, v21

    const/4 v2, 0x0

    const/4 v11, 0x3

    .line 2520
    invoke-virtual {v10, v12, v9, v2, v11}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    move/from16 v2, p11

    if-lez v2, :cond_c

    const/4 v11, 0x6

    .line 2522
    invoke-virtual {v10, v12, v9, v2, v11}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_8

    :cond_c
    const/4 v11, 0x6

    :goto_8
    const v8, 0x7fffffff

    move-object/from16 v26, v6

    move/from16 v6, p12

    if-ge v6, v8, :cond_e

    .line 2525
    invoke-virtual {v10, v12, v9, v6, v11}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_9

    :cond_d
    move-object/from16 v26, v6

    move/from16 v25, v11

    move-object/from16 v12, v21

    move v11, v2

    move/from16 v2, p11

    .line 2528
    invoke-virtual {v10, v12, v9, v8, v11}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    :cond_e
    :goto_9
    move/from16 v2, p17

    move/from16 v11, p18

    move v0, v14

    move-object/from16 v6, v20

    goto/16 :goto_12

    :cond_f
    move-object/from16 v26, v6

    move/from16 v25, v11

    move-object/from16 v12, v21

    move/from16 v2, p11

    const/4 v6, -0x2

    move/from16 v11, p17

    if-ne v11, v6, :cond_10

    move/from16 v11, p18

    move v2, v8

    goto :goto_a

    :cond_10
    move v2, v11

    move/from16 v11, p18

    :goto_a
    if-ne v11, v6, :cond_11

    move v11, v8

    :cond_11
    if-lez v2, :cond_13

    if-eqz p2, :cond_12

    const/4 v6, 0x6

    .line 2540
    invoke-virtual {v10, v12, v9, v2, v6}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_b

    :cond_12
    const/4 v6, 0x6

    .line 2542
    invoke-virtual {v10, v12, v9, v2, v6}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2544
    :goto_b
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_13
    const/4 v6, 0x6

    :goto_c
    if-lez v11, :cond_15

    if-eqz p2, :cond_14

    const/4 v6, 0x1

    .line 2548
    invoke-virtual {v10, v12, v9, v11, v6}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    const/4 v6, 0x6

    goto :goto_d

    .line 2550
    :cond_14
    invoke-virtual {v10, v12, v9, v11, v6}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2552
    :goto_d
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_15
    const/4 v6, 0x1

    if-ne v14, v6, :cond_18

    if-eqz p2, :cond_16

    const/4 v6, 0x6

    .line 2556
    invoke-virtual {v10, v12, v9, v8, v6}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto/16 :goto_10

    :cond_16
    if-eqz p15, :cond_17

    const/4 v6, 0x4

    .line 2558
    invoke-virtual {v10, v12, v9, v8, v6}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto/16 :goto_10

    :cond_17
    const/4 v6, 0x1

    .line 2560
    invoke-virtual {v10, v12, v9, v8, v6}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    goto/16 :goto_10

    :cond_18
    const/4 v6, 0x2

    if-ne v14, v6, :cond_1b

    .line 2565
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    move/from16 v27, v14

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v6, v14, :cond_1a

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->d()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v14, :cond_19

    goto :goto_e

    .line 2570
    :cond_19
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2571
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v28

    goto :goto_f

    .line 2567
    :cond_1a
    :goto_e
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2568
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v29

    .line 2573
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/e;->c()Landroid/support/constraint/solver/b;

    move-result-object v14

    move-object/from16 v6, v20

    move/from16 v0, v27

    move-object v15, v12

    move-object/from16 v16, v9

    move/from16 v19, p19

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/b;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/b;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/b;)V

    const/16 v25, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    move v0, v14

    move-object/from16 v6, v20

    :goto_11
    if-eqz v25, :cond_1d

    const/4 v14, 0x2

    if-eq v7, v14, :cond_1d

    if-nez p14, :cond_1d

    .line 2579
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v11, :cond_1c

    .line 2581
    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_1c
    const/4 v14, 0x6

    .line 2583
    invoke-virtual {v10, v12, v9, v8, v14}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    const/16 v25, 0x0

    :cond_1d
    :goto_12
    if-eqz p20, :cond_34

    if-eqz p15, :cond_1e

    goto/16 :goto_1e

    :cond_1e
    const/4 v4, 0x5

    if-nez v1, :cond_21

    if-nez v24, :cond_21

    if-nez v23, :cond_21

    if-eqz p2, :cond_1f

    const/4 v5, 0x0

    move-object/from16 v14, p4

    .line 2605
    invoke-virtual {v10, v14, v12, v5, v4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_13

    :cond_1f
    const/4 v2, 0x6

    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_1d

    :cond_21
    const/4 v5, 0x0

    move-object/from16 v14, p4

    if-eqz v1, :cond_23

    if-nez v24, :cond_23

    if-eqz p2, :cond_22

    .line 2610
    invoke-virtual {v10, v14, v12, v5, v4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_22
    :goto_13
    move v3, v5

    const/4 v2, 0x6

    goto/16 :goto_1d

    :cond_23
    if-nez v1, :cond_24

    if-eqz v24, :cond_24

    .line 2613
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x6

    invoke-virtual {v10, v12, v6, v0, v1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-eqz p2, :cond_22

    move-object/from16 v8, p3

    .line 2615
    invoke-virtual {v10, v9, v8, v5, v4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_13

    :cond_24
    const/4 v7, 0x1

    move-object/from16 v8, p3

    if-eqz v1, :cond_22

    if-eqz v24, :cond_22

    if-eqz v25, :cond_2f

    if-eqz p2, :cond_25

    move/from16 v1, p11

    if-nez v1, :cond_25

    const/4 v1, 0x6

    .line 2628
    invoke-virtual {v10, v12, v9, v5, v1}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_25
    if-nez v0, :cond_2a

    if-gtz v11, :cond_27

    if-lez v2, :cond_26

    goto :goto_14

    :cond_26
    const/4 v0, 0x6

    const/4 v1, 0x0

    goto :goto_15

    :cond_27
    :goto_14
    move v1, v7

    const/4 v0, 0x4

    .line 2637
    :goto_15
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    move-object/from16 v5, v26

    invoke-virtual {v10, v9, v5, v3, v0}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    .line 2638
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v12, v6, v3, v0}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    if-gtz v11, :cond_29

    if-lez v2, :cond_28

    goto :goto_16

    :cond_28
    const/4 v11, 0x0

    goto :goto_17

    :cond_29
    :goto_16
    move v11, v7

    :goto_17
    move v15, v1

    move v7, v11

    move-object/from16 v0, p0

    move v11, v4

    goto :goto_1a

    :cond_2a
    move-object/from16 v5, v26

    if-ne v0, v7, :cond_2b

    move v15, v7

    move-object/from16 v0, p0

    const/4 v11, 0x6

    goto :goto_1a

    :cond_2b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    if-nez p14, :cond_2c

    move-object/from16 v0, p0

    .line 2650
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    if-gtz v11, :cond_2d

    const/4 v1, 0x6

    goto :goto_18

    :cond_2c
    move-object/from16 v0, p0

    :cond_2d
    const/4 v1, 0x4

    .line 2655
    :goto_18
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    invoke-virtual {v10, v9, v5, v2, v1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    .line 2656
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v12, v6, v2, v1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    move v11, v4

    move v15, v7

    goto :goto_1a

    :cond_2e
    move-object/from16 v0, p0

    move v11, v4

    const/4 v7, 0x0

    goto :goto_19

    :cond_2f
    move-object/from16 v5, v26

    move-object/from16 v0, p0

    if-eqz p2, :cond_30

    .line 2662
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    invoke-virtual {v10, v9, v5, v1, v4}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2663
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v12, v6, v1, v4}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_30
    move v11, v4

    :goto_19
    const/4 v15, 0x0

    :goto_1a
    if-eqz v7, :cond_31

    .line 2668
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v4

    .line 2669
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v16

    move-object v1, v10

    move-object v2, v9

    move-object v3, v5

    move-object v7, v5

    move/from16 v5, p13

    move-object/from16 v30, v6

    move-object v0, v7

    move-object v7, v12

    move-object v14, v8

    move/from16 v8, v16

    move-object v14, v9

    move v9, v11

    .line 2668
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1b

    :cond_31
    move-object v0, v5

    move-object/from16 v30, v6

    move-object v14, v9

    :goto_1b
    if-eqz v15, :cond_32

    .line 2674
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v10, v14, v0, v1, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2675
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v1, v30

    invoke-virtual {v10, v12, v1, v0, v2}, Landroid/support/constraint/solver/e;->b(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1c

    :cond_32
    const/4 v2, 0x6

    :goto_1c
    if-eqz p2, :cond_20

    move-object v1, v14

    move-object/from16 v0, p3

    const/4 v3, 0x0

    .line 2679
    invoke-virtual {v10, v1, v0, v3, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :goto_1d
    if-eqz p2, :cond_33

    move-object/from16 v0, p4

    .line 2684
    invoke-virtual {v10, v0, v12, v3, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_33
    return-void

    :cond_34
    :goto_1e
    move-object v1, v9

    move-object/from16 v0, p4

    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object/from16 v4, p3

    const/4 v5, 0x2

    if-ge v7, v5, :cond_35

    if-eqz p2, :cond_35

    .line 2594
    invoke-virtual {v10, v1, v4, v3, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2595
    invoke-virtual {v10, v0, v12, v3, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 967
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    return v0
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    .line 977
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->aj:Ljava/lang/Object;

    return-object v0
.end method

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

    .line 986
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public D()V
    .locals 5

    .line 1068
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    .line 1069
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    .line 1070
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    add-int/2addr v2, v3

    .line 1071
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    add-int/2addr v3, v4

    .line 1072
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad:I

    .line 1073
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ae:I

    sub-int/2addr v2, v0

    .line 1074
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->af:I

    sub-int/2addr v3, v1

    .line 1075
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ag:I

    return-void
.end method

.method public E()V
    .locals 3

    .line 1932
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1933
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/c;

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/c;

    .line 1935
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/c;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1939
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1940
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1941
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2044
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public G()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2053
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .line 2007
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2035
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2027
    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2024
    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2030
    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2021
    :pswitch_4
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2018
    :pswitch_5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2015
    :pswitch_6
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2012
    :pswitch_7
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2009
    :pswitch_8
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(F)V
    .locals 0

    .line 1300
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1014
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    .line 1015
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    return-void
.end method

.method public a(IIIF)V
    .locals 0

    .line 1176
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    .line 1177
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    .line 1178
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    .line 1179
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 1180
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1181
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1386
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    .line 1387
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    .line 1389
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1390
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 1391
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    return-void

    .line 1396
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    if-ge p3, p1, :cond_1

    .line 1397
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 1399
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    if-ge p4, p1, :cond_2

    .line 1400
    iget p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 1403
    :cond_2
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 1404
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 1406
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    if-ge p1, p2, :cond_3

    .line 1407
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 1409
    :cond_3
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    if-ge p1, p2, :cond_4

    .line 1410
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    :cond_4
    return-void
.end method

.method public a(Landroid/support/constraint/solver/c;)V
    .locals 1

    .line 426
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 427
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 428
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 429
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 430
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 431
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 432
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    .line 433
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/c;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/e;)V
    .locals 40

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2181
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v21

    .line 2182
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v13

    .line 2183
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    .line 2184
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v11

    .line 2185
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 2192
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/16 v1, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_a

    .line 2193
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v8

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v8

    .line 2194
    :goto_0
    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v2, :cond_1

    iget-object v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v9

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    move v2, v9

    goto :goto_1

    :cond_1
    move v2, v8

    .line 2197
    :goto_1
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_4

    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v3, v4, :cond_4

    .line 2199
    :cond_3
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v3, v15, v8}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v8

    .line 2203
    :goto_2
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_5

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v4, v5, :cond_6

    :cond_5
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_7

    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v4, v5, :cond_7

    .line 2205
    :cond_6
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/c;

    invoke-virtual {v4, v15, v9}, Landroid/support/constraint/solver/widgets/c;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    move v4, v9

    goto :goto_3

    :cond_7
    move v4, v8

    :goto_3
    if-eqz v0, :cond_8

    .line 2209
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    if-eq v5, v1, :cond_8

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_8

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_8

    .line 2211
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2212
    invoke-virtual {v14, v5, v13, v8, v9}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_8
    if-eqz v2, :cond_9

    .line 2215
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    if-eq v5, v1, :cond_9

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_9

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_9

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_9

    .line 2217
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 2218
    invoke-virtual {v14, v5, v11, v8, v9}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_9
    move v7, v2

    move/from16 v16, v3

    move/from16 v22, v4

    move v2, v0

    goto :goto_4

    :cond_a
    move v2, v8

    move v7, v2

    move/from16 v16, v7

    move/from16 v22, v16

    .line 2222
    :goto_4
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 2223
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    if-ge v0, v3, :cond_b

    .line 2224
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    .line 2226
    :cond_b
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 2227
    iget v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    if-ge v3, v4, :cond_c

    .line 2228
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    .line 2232
    :cond_c
    iget-object v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v8

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_d

    move v4, v9

    goto :goto_5

    :cond_d
    move v4, v8

    .line 2233
    :goto_5
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v9

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_e

    move v5, v9

    goto :goto_6

    :cond_e
    move v5, v8

    .line 2238
    :goto_6
    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    iput v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2239
    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    iput v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2241
    iget v6, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    .line 2242
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    .line 2244
    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    const/16 v17, 0x0

    cmpl-float v8, v8, v17

    const/16 v17, 0x4

    if-lez v8, :cond_17

    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/16 v1, 0x8

    if-eq v8, v1, :cond_17

    .line 2246
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v1, v1, v8

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v27, v0

    const/4 v0, 0x3

    if-ne v1, v8, :cond_f

    if-nez v6, :cond_f

    move v6, v0

    .line 2250
    :cond_f
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v1, v1, v8

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v8, :cond_10

    if-nez v9, :cond_10

    move v9, v0

    .line 2255
    :cond_10
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v1, v1, v8

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v8, :cond_11

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v1, v1, v8

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v8, :cond_11

    if-ne v6, v0, :cond_11

    if-ne v9, v0, :cond_11

    .line 2259
    invoke-virtual {v15, v2, v7, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(ZZZZ)V

    goto :goto_7

    .line 2260
    :cond_11
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_13

    if-ne v6, v0, :cond_13

    .line 2262
    iput v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2263
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2264
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v5, :cond_12

    move/from16 v27, v0

    move/from16 v28, v3

    goto :goto_9

    :cond_12
    move/from16 v27, v0

    move/from16 v28, v3

    move/from16 v25, v4

    move/from16 v17, v6

    move/from16 v29, v9

    goto :goto_a

    :cond_13
    const/4 v4, 0x1

    .line 2268
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v4

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_16

    if-ne v9, v0, :cond_16

    .line 2270
    iput v4, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2271
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2273
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float/2addr v0, v1

    iput v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2275
    :cond_14
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2276
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v3, :cond_15

    move/from16 v28, v0

    move/from16 v29, v17

    const/16 v25, 0x0

    move/from16 v17, v6

    goto :goto_a

    :cond_15
    move/from16 v28, v0

    goto :goto_8

    :cond_16
    :goto_7
    move/from16 v28, v3

    :goto_8
    move/from16 v17, v6

    move/from16 v29, v9

    const/16 v25, 0x1

    goto :goto_a

    :cond_17
    move/from16 v27, v0

    move/from16 v28, v3

    move/from16 v17, v6

    :goto_9
    move/from16 v29, v9

    const/16 v25, 0x0

    :goto_a
    if-eqz v25, :cond_19

    .line 2283
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-eqz v0, :cond_18

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    goto :goto_b

    :cond_18
    const/4 v1, -0x1

    :goto_b
    const/16 v18, 0x1

    goto :goto_c

    :cond_19
    const/4 v1, -0x1

    :cond_1a
    const/16 v18, 0x0

    .line 2287
    :goto_c
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1b

    instance-of v0, v15, Landroid/support/constraint/solver/widgets/c;

    if-eqz v0, :cond_1b

    const/4 v6, 0x1

    goto :goto_d

    :cond_1b
    const/4 v6, 0x0

    .line 2291
    :goto_d
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    const/4 v9, 0x1

    xor-int/lit8 v23, v0, 0x1

    .line 2295
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a:I

    const/4 v8, 0x2

    const/16 v26, 0x0

    if-eq v0, v8, :cond_1e

    .line 2296
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1c

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v4, v0

    goto :goto_e

    :cond_1c
    move-object/from16 v4, v26

    .line 2297
    :goto_e
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1d

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    :cond_1d
    move-object/from16 v3, v26

    .line 2298
    :goto_f
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x0

    aget-object v5, v0, v19

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    move-object/from16 v31, v11

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    aget v20, v1, v19

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    move-object/from16 v33, v13

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    move/from16 v34, v13

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    move/from16 v35, v13

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i:F

    move-object/from16 v24, v0

    move-object v0, v15

    move/from16 v32, v1

    move-object v1, v14

    move/from16 v36, v7

    move-object/from16 v7, v24

    move-object/from16 v37, v10

    move/from16 v10, v27

    move-object/from16 v24, v31

    move-object/from16 v38, v12

    move/from16 v12, v20

    move/from16 v30, v13

    move-object/from16 v27, v33

    move/from16 v19, v34

    move/from16 v20, v35

    move/from16 v13, v32

    move/from16 v14, v18

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v30

    move/from16 v20, v23

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/e;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    move-object/from16 v15, p0

    goto :goto_10

    :cond_1e
    move/from16 v36, v7

    move-object/from16 v37, v10

    move-object/from16 v24, v11

    move-object/from16 v38, v12

    move-object/from16 v27, v13

    .line 2304
    :goto_10
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    return-void

    .line 2314
    :cond_1f
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_20

    instance-of v0, v15, Landroid/support/constraint/solver/widgets/c;

    if-eqz v0, :cond_20

    move v6, v14

    goto :goto_11

    :cond_20
    const/4 v6, 0x0

    :goto_11
    if-eqz v25, :cond_22

    .line 2317
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-eq v0, v14, :cond_21

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    :cond_21
    move/from16 v16, v14

    goto :goto_12

    :cond_22
    const/16 v16, 0x0

    .line 2320
    :goto_12
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v0, :cond_24

    .line 2321
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/h;->i:I

    if-ne v0, v14, :cond_23

    .line 2322
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v0

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/h;->a(Landroid/support/constraint/solver/e;)V

    move-object/from16 v12, v38

    goto :goto_13

    :cond_23
    move-object/from16 v13, p1

    .line 2324
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v2, v37

    move-object/from16 v12, v38

    invoke-virtual {v13, v2, v12, v0, v1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    .line 2325
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_25

    .line 2326
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    const/4 v3, 0x0

    .line 2328
    invoke-virtual {v13, v2, v0, v3, v1}, Landroid/support/constraint/solver/e;->c(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/b;

    move/from16 v20, v3

    goto :goto_14

    :cond_24
    move-object/from16 v12, v38

    move-object/from16 v13, p1

    :cond_25
    :goto_13
    move/from16 v20, v23

    .line 2333
    :goto_14
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_26

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v4, v0

    goto :goto_15

    :cond_26
    move-object/from16 v4, v26

    .line 2334
    :goto_15
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_27

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroid/support/constraint/solver/e;->a(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v3, v0

    goto :goto_16

    :cond_27
    move-object/from16 v3, v26

    .line 2335
    :goto_16
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v0, v14

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    aget v17, v0, v14

    iget v10, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->P:F

    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l:F

    move/from16 v19, v0

    move-object v0, v15

    move/from16 v18, v1

    move-object v1, v13

    move/from16 v23, v2

    move/from16 v2, v36

    move/from16 v26, v10

    move/from16 v10, v28

    move-object/from16 v28, v12

    move/from16 v12, v17

    move/from16 v13, v26

    move/from16 v14, v16

    move/from16 v15, v22

    move/from16 v16, v29

    move/from16 v17, v23

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/e;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    if-eqz v25, :cond_29

    const/4 v6, 0x6

    move-object/from16 v7, p0

    .line 2342
    iget v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 2343
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    move-object/from16 v3, v27

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_17

    .line 2345
    :cond_28
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v28

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_17

    :cond_29
    move-object/from16 v7, p0

    .line 2349
    :goto_17
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2350
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ac:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->e()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroid/support/constraint/solver/e;->a(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    :cond_2a
    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 6

    .line 1634
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 7

    .line 1579
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1580
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1581
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1651
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    .line 1669
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v11, 0x0

    if-ne v0, v1, :cond_c

    .line 1672
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_8

    .line 1673
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1674
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1675
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    .line 1676
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v12

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 1680
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v14, v11

    goto :goto_0

    .line 1683
    :cond_2
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v8

    move-object/from16 v5, p5

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1685
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    move v14, v13

    :goto_0
    if-eqz v9, :cond_3

    .line 1689
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    if-eqz v12, :cond_5

    .line 1690
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v13, v11

    goto :goto_1

    .line 1693
    :cond_5
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v8

    move-object/from16 v5, p5

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1695
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    :goto_1
    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    .line 1700
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1701
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v14, :cond_7

    .line 1703
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1704
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_7
    if-eqz v13, :cond_1d

    .line 1706
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1707
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1709
    :cond_8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v0, :cond_b

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_9

    goto :goto_2

    .line 1717
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v0, :cond_a

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v0, :cond_1d

    .line 1719
    :cond_a
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v5, p5

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1721
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1723
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1724
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1711
    :cond_b
    :goto_2
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v5, p5

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1713
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1715
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1716
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1726
    :cond_c
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_e

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v1, :cond_d

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_e

    .line 1729
    :cond_d
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1730
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1731
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1732
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1733
    invoke-virtual {v2, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1734
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1735
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1736
    :cond_e
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_10

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v9, v1, :cond_f

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_10

    .line 1739
    :cond_f
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1740
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1741
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1742
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1743
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1744
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1745
    invoke-virtual {v1, v0, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1746
    :cond_10
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_11

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_11

    .line 1749
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1750
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1751
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1752
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1753
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1754
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1755
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1756
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1757
    :cond_11
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_12

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v9, v1, :cond_12

    .line 1760
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1761
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1762
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1763
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1764
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1765
    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1766
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1767
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1769
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1770
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1771
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1774
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_15

    .line 1775
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1776
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v0, :cond_13

    .line 1778
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    :cond_13
    if-eqz v3, :cond_14

    .line 1781
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    :cond_14
    :goto_3
    move-object/from16 v0, p5

    goto/16 :goto_6

    .line 1784
    :cond_15
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_19

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_16

    goto :goto_4

    .line 1810
    :cond_16
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_17

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_1c

    .line 1812
    :cond_17
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1813
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_18

    .line 1814
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1816
    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->k()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1817
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1818
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1819
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1820
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    goto :goto_5

    .line 1786
    :cond_19
    :goto_4
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1788
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1790
    :cond_1a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1791
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->g()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_1b

    .line 1792
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1794
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->k()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1795
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1796
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1797
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 1798
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    :cond_1c
    :goto_5
    move/from16 v11, p4

    goto :goto_3

    .line 1834
    :goto_6
    invoke-virtual {v1, v2, v11, v0, v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 1835
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->c()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_1d
    :goto_7
    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 2062
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2063
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2064
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ah:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    .line 548
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public a(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 6

    .line 589
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 591
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ac:F

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1462
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->aj:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 643
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->am:Ljava/lang/String;

    return-void
.end method

.method public a(ZZZZ)V
    .locals 5

    .line 2370
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2372
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2374
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2375
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    if-ne p3, v3, :cond_1

    .line 2377
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2382
    :cond_1
    :goto_0
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-nez p3, :cond_3

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-nez p3, :cond_3

    .line 2383
    :cond_2
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    goto :goto_1

    .line 2384
    :cond_3
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-nez p3, :cond_5

    .line 2385
    :cond_4
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2389
    :cond_5
    :goto_1
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-ne p3, v3, :cond_8

    .line 2390
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2391
    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-nez p3, :cond_8

    .line 2393
    :cond_6
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2394
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    goto :goto_2

    .line 2395
    :cond_7
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2396
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2397
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2402
    :cond_8
    :goto_2
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-ne p3, v3, :cond_a

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    .line 2404
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 2406
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2407
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2411
    :cond_a
    :goto_3
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-ne p3, v3, :cond_c

    .line 2412
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    if-lez p3, :cond_b

    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    if-nez p3, :cond_b

    .line 2413
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    goto :goto_4

    .line 2414
    :cond_b
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    if-nez p3, :cond_c

    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    if-lez p3, :cond_c

    .line 2415
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2416
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 2420
    :cond_c
    :goto_4
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    if-ne p3, v3, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2421
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 2422
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    :cond_d
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1552
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/h;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1310
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->P:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 337
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/f;->a(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1025
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->I:I

    .line 1026
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->J:I

    return-void
.end method

.method public b(IIIF)V
    .locals 0

    .line 1194
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    .line 1195
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    .line 1196
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    .line 1197
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 1198
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1199
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/e;)V
    .locals 4

    .line 2694
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2695
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2696
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result v2

    .line 2697
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/e;->b(Ljava/lang/Object;)I

    move-result p1

    .line 2698
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a(IIII)V

    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 2074
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2075
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2076
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ai:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 1215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1216
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 1218
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1219
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 1221
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 1228
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 1231
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1232
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1233
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1235
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1236
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 1239
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 1241
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1249
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1252
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move p1, v0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 1260
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    .line 1261
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    :cond_7
    return-void

    .line 1210
    :cond_8
    :goto_2
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(F)V
    .locals 2

    .line 1496
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 1425
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    sub-int/2addr p2, p1

    .line 1426
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 1427
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    if-ge p1, p2, :cond_0

    .line 1428
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n:Z

    return-void
.end method

.method public d(F)V
    .locals 2

    .line 1505
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1439
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    sub-int/2addr p2, p1

    .line 1440
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 1441
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    if-ge p1, p2, :cond_0

    .line 1442
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 110
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e(I)V
    .locals 0

    .line 618
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    return-void
.end method

.method public e()Z
    .locals 3

    .line 118
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()V
    .locals 7

    .line 245
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->q:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 246
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->r:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 247
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->s:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->t:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 249
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->u:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 250
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->v:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 251
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->w:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    .line 252
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->x:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->i()V

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    .line 254
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ac:F

    const/4 v2, 0x0

    .line 255
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 256
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 257
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->E:F

    const/4 v3, -0x1

    .line 258
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->F:I

    .line 259
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    .line 260
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    .line 261
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad:I

    .line 262
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ae:I

    .line 263
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->af:I

    .line 264
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ag:I

    .line 265
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->I:I

    .line 266
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->J:I

    .line 267
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    .line 268
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    .line 269
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    .line 270
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ah:I

    .line 271
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ai:I

    .line 272
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->N:F

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    .line 273
    sget v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->N:F

    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->P:F

    .line 274
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v2

    .line 275
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->A:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 276
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->aj:Ljava/lang/Object;

    .line 277
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ak:I

    .line 278
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    .line 279
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->an:Ljava/lang/String;

    .line 280
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->Q:Z

    .line 281
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->R:Z

    .line 282
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    .line 283
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    .line 284
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->U:Z

    .line 285
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->V:Z

    .line 286
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aput v1, v0, v2

    .line 287
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->W:[F

    aput v1, v0, v6

    .line 288
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->a:I

    .line 289
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->b:I

    .line 290
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    const v1, 0x7fffffff

    aput v1, v0, v2

    .line 291
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ab:[I

    aput v1, v0, v6

    .line 292
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->e:I

    .line 293
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 294
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->i:F

    .line 295
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->l:F

    .line 296
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->h:I

    .line 297
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->k:I

    .line 298
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->g:I

    .line 299
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->j:I

    .line 300
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->o:I

    .line 301
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->p:F

    .line 302
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c:Landroid/support/constraint/solver/widgets/i;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c:Landroid/support/constraint/solver/widgets/i;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/i;->b()V

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d:Landroid/support/constraint/solver/widgets/i;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d:Landroid/support/constraint/solver/widgets/i;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/i;->b()V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 0

    .line 995
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->y:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->a()Landroid/support/constraint/solver/widgets/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/h;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1004
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    return-void
.end method

.method public h()Landroid/support/constraint/solver/widgets/i;
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c:Landroid/support/constraint/solver/widgets/i;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Landroid/support/constraint/solver/widgets/i;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/i;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c:Landroid/support/constraint/solver/widgets/i;

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->c:Landroid/support/constraint/solver/widgets/i;

    return-object v0
.end method

.method public h(I)V
    .locals 1

    .line 1149
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    .line 1150
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    if-ge p1, v0, :cond_0

    .line 1151
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    :cond_0
    return-void
.end method

.method public i()Landroid/support/constraint/solver/widgets/i;
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d:Landroid/support/constraint/solver/widgets/i;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/support/constraint/solver/widgets/i;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/i;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d:Landroid/support/constraint/solver/widgets/i;

    .line 381
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->d:Landroid/support/constraint/solver/widgets/i;

    return-object v0
.end method

.method public i(I)V
    .locals 1

    .line 1161
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    .line 1162
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    if-ge p1, v0, :cond_0

    .line 1163
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    :cond_0
    return-void
.end method

.method public j()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 539
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->B:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1320
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    goto :goto_0

    .line 1322
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->L:I

    :goto_0
    return-void
.end method

.method public k()I
    .locals 1

    .line 627
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    return v0
.end method

.method public k(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1333
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    goto :goto_0

    .line 1335
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->M:I

    :goto_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->am:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    .line 1345
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ah:I

    return-void
.end method

.method public m()I
    .locals 1

    .line 724
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    return v0
.end method

.method public m(I)V
    .locals 0

    .line 1354
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ai:I

    return-void
.end method

.method public n()I
    .locals 1

    .line 733
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    return v0
.end method

.method public n(I)V
    .locals 0

    .line 1452
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    return-void
.end method

.method public o()I
    .locals 2

    .line 742
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 745
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1515
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->S:I

    return-void
.end method

.method public p()I
    .locals 1

    .line 790
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ah:I

    return v0
.end method

.method public p(I)V
    .locals 0

    .line 1535
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->T:I

    return-void
.end method

.method public q()I
    .locals 2

    .line 799
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->al:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 802
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    return v0
.end method

.method public r()I
    .locals 1

    .line 811
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ai:I

    return v0
.end method

.method public s()I
    .locals 2

    .line 820
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ad:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->I:I

    add-int/2addr v0, v1

    return v0
.end method

.method public t()I
    .locals 2

    .line 829
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ae:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->an:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->an:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->am:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->ai:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()I
    .locals 2

    .line 865
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->G:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->I:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected v()I
    .locals 2

    .line 875
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->H:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method public w()I
    .locals 2

    .line 920
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->m()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->C:I

    add-int/2addr v0, v1

    return v0
.end method

.method public x()I
    .locals 2

    .line 929
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->n()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->D:I

    add-int/2addr v0, v1

    return v0
.end method

.method public y()F
    .locals 1

    .line 939
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->O:F

    return v0
.end method

.method public z()Z
    .locals 1

    .line 958
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->K:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
