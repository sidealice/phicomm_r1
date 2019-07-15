.class public Lcn/yunzhisheng/asr/a;
.super Ljava/lang/Object;


# static fields
.field public static final P:I = 0xbb8

.field public static final Q:I = 0x12c

.field public static final R:I = 0x3e8

.field public static final S:I = 0x3e80

.field public static final T:I = 0x1f40

.field public static final U:I = 0x1f4

.field public static final V:Z = false

.field public static final W:Z = false

.field public static final X:Z = true

.field public static final a:I = 0x2710

.field public static final an:I = 0x1

.field public static final b:I = 0x4e20

.field private static final ba:I = 0xf00

.field static final d:I = 0x5

.field static final e:I = 0x6

.field static final f:I = 0x7

.field static final g:I = 0x8

.field static final h:I = 0x9

.field static final i:I = 0xa

.field static final j:I = 0xb

.field static final k:I = 0xc

.field static final l:I = 0xd

.field static final m:I = 0xe

.field static final n:I = 0xf

.field static final o:I = 0x10

.field static final p:I = 0x11

.field static final q:I = 0x12

.field static final r:I = 0x13

.field static final s:I = 0x14

.field static final t:I = 0x15

.field static final u:I = 0x16

.field static final v:I = 0x17

.field static final w:I = 0x18

.field static final x:I = 0x19


# instance fields
.field public A:Lcn/yunzhisheng/asr/c;

.field public B:Lcn/yunzhisheng/asr/d;

.field public C:Lcn/yunzhisheng/asr/d;

.field public D:Lcn/yunzhisheng/asr/c;

.field public E:Lcn/yunzhisheng/asr/d;

.field public F:Lcn/yunzhisheng/asr/d;

.field public G:Lcn/yunzhisheng/asr/c;

.field public H:Lcn/yunzhisheng/asr/c;

.field public I:Lcn/yunzhisheng/asr/c;

.field public J:Lcn/yunzhisheng/asr/c;

.field public K:Lcn/yunzhisheng/asr/d;

.field public L:Lcn/yunzhisheng/asr/d;

.field public M:Lcn/yunzhisheng/asr/d;

.field public N:Lcn/yunzhisheng/asr/d;

.field public O:Lcn/yunzhisheng/asr/c;

.field Y:Z

.field Z:Z

.field private aA:I

.field private aB:Z

.field private aC:Z

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:I

.field private aJ:Z

.field private aK:Z

.field private aL:Z

.field private aM:J

.field private aN:Z

.field private aO:F

.field private aP:I

.field private aQ:Ljava/lang/String;

.field private aR:Z

.field private aS:I

.field private aT:I

.field private aU:J

.field private aV:Z

.field private aW:J

.field private aX:I

.field private aY:I

.field private aZ:I

.field aa:I

.field ab:I

.field ac:I

.field ad:I

.field ae:I

.field protected af:Z

.field public ag:Z

.field ah:I

.field ai:I

.field public aj:Z

.field ak:Z

.field public al:I

.field public am:Ljava/lang/String;

.field public ao:I

.field public ap:I

.field public aq:Z

.field public ar:Z

.field public as:Z

.field public at:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field au:Z

.field av:Z

.field private aw:Z

.field private ax:I

.field private ay:J

.field private az:J

.field private bb:I

.field private bc:Z

.field private bd:Z

.field private be:Ljava/lang/String;

.field private bf:Z

.field private bg:Ljava/lang/String;

.field public c:Lcom/unisound/common/s;

.field public y:Lcn/yunzhisheng/asr/c;

.field public z:Lcn/yunzhisheng/asr/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0x3e80

    const/16 v6, 0xbb8

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/d;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    new-instance v0, Lcn/yunzhisheng/asr/c;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/asr/c;-><init>(Lcn/yunzhisheng/asr/a;I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aw:Z

    iput v2, p0, Lcn/yunzhisheng/asr/a;->ax:I

    iput-wide v4, p0, Lcn/yunzhisheng/asr/a;->ay:J

    iput-wide v4, p0, Lcn/yunzhisheng/asr/a;->az:J

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->Y:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->Z:Z

    iput v7, p0, Lcn/yunzhisheng/asr/a;->aa:I

    iput v6, p0, Lcn/yunzhisheng/asr/a;->ab:I

    const/16 v0, 0x12c

    iput v0, p0, Lcn/yunzhisheng/asr/a;->ac:I

    iput v7, p0, Lcn/yunzhisheng/asr/a;->ad:I

    const v0, 0x9470

    iput v0, p0, Lcn/yunzhisheng/asr/a;->ae:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->af:Z

    const/16 v0, 0x15e

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aA:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->ag:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aB:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aC:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->aD:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->aE:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aF:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/a;->aG:Z

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/a;->aH:Z

    iput v2, p0, Lcn/yunzhisheng/asr/a;->ah:I

    iput v7, p0, Lcn/yunzhisheng/asr/a;->ai:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aI:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aj:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->ak:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aJ:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aK:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aL:Z

    iput-wide v4, p0, Lcn/yunzhisheng/asr/a;->aM:J

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aN:Z

    const v0, -0x3fd33333    # -2.7f

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aO:F

    const/16 v0, 0x3e8

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aP:I

    iput v6, p0, Lcn/yunzhisheng/asr/a;->al:I

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->am:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->aQ:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aR:Z

    iput v2, p0, Lcn/yunzhisheng/asr/a;->aS:I

    iget v0, p0, Lcn/yunzhisheng/asr/a;->al:I

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aT:I

    iput-wide v4, p0, Lcn/yunzhisheng/asr/a;->aU:J

    iput-boolean v3, p0, Lcn/yunzhisheng/asr/a;->aV:Z

    iput-wide v4, p0, Lcn/yunzhisheng/asr/a;->aW:J

    iput v6, p0, Lcn/yunzhisheng/asr/a;->aX:I

    const/16 v0, 0x12c

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aY:I

    iput v3, p0, Lcn/yunzhisheng/asr/a;->ao:I

    iput v3, p0, Lcn/yunzhisheng/asr/a;->ap:I

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->aq:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->ar:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->as:Z

    iput v2, p0, Lcn/yunzhisheng/asr/a;->aZ:I

    const/16 v0, 0xf00

    iput v0, p0, Lcn/yunzhisheng/asr/a;->bb:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->at:Ljava/util/Map;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->au:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->bc:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->bd:Z

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->av:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->be:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/a;->bf:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/asr/a;->bg:Ljava/lang/String;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/a;->f(I)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->r()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    const/high16 v1, -0x41800000    # -0.25f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Lcom/unisound/common/s;

    invoke-direct {v1, v0}, Lcom/unisound/common/s;-><init>(Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setfourMicUtil error"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public A(I)I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x2

    div-int v0, p1, v0

    return v0
.end method

.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->bf:Z

    return-void
.end method

.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aK:Z

    return v0
.end method

.method public B(I)I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aH:Z

    return-void
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aL:Z

    return v0
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aM:J

    return-wide v0
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aa:I

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aC:Z

    return-void
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aN:Z

    return v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aO:F

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aP:I

    return v0
.end method

.method public G()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcn/yunzhisheng/asr/a;->aP:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public H()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcn/yunzhisheng/asr/a;->aI:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->al:I

    return v0
.end method

.method public J()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcn/yunzhisheng/asr/a;->al:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->am:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aR:Z

    return v0
.end method

.method public N()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aS:I

    return v0
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aT:I

    return v0
.end method

.method public P()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v2, v2, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public Q()F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aU:J

    return-wide v0
.end method

.method public S()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->aU:J

    return-void
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aV:Z

    return v0
.end method

.method public U()J
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aW:J

    return-wide v0
.end method

.method public V()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->aW:J

    return-void
.end method

.method public W()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aX:I

    return v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aY:I

    return v0
.end method

.method public Y()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ao:I

    return v0
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ap:I

    return v0
.end method

.method public a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcn/yunzhisheng/asr/a;->at:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    const-string v1, "set wakeupWord and property error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aO:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ah:I

    return-void
.end method

.method public a(II)V
    .locals 2

    const/16 v0, 0x12c

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ab:I

    if-le p2, v0, :cond_0

    add-int/lit16 v1, p2, -0x12c

    iput v1, p0, Lcn/yunzhisheng/asr/a;->aI:I

    move p2, v0

    :goto_0
    iput p2, p0, Lcn/yunzhisheng/asr/a;->ac:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aI:I

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/yunzhisheng/asr/a;->aM:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->aD:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aw:Z

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aw:Z

    return v0
.end method

.method public aa()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aq:Z

    return v0
.end method

.method public ab()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->ar:Z

    return v0
.end method

.method public ac()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->as:Z

    return v0
.end method

.method public ad()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()I
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public af()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aC:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    const v1, 0x4a989680    # 5000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    const v1, -0x41666666    # -0.3f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    :cond_1
    return-void
.end method

.method public ag()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aZ:I

    return v0
.end method

.method public ah()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aZ:I

    return-void
.end method

.method public ai()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current Recording Length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/yunzhisheng/asr/a;->bb:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget v0, p0, Lcn/yunzhisheng/asr/a;->bb:I

    return v0
.end method

.method public aj()J
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->ay:J

    return-wide v0
.end method

.method public ak()J
    .locals 2

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->az:J

    return-wide v0
.end method

.method public al()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->au:Z

    return v0
.end method

.method public am()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aG:Z

    return v0
.end method

.method public an()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->bc:Z

    return v0
.end method

.method public ao()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->bd:Z

    return v0
.end method

.method public ap()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->av:Z

    return v0
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->be:Ljava/lang/String;

    return-object v0
.end method

.method public ar()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->bf:Z

    return v0
.end method

.method public as()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/yunzhisheng/asr/a;->bg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aH:Z

    return v0
.end method

.method public au()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    return v0
.end method

.method public av()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aC:Z

    return v0
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/c;->a(F)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ai:I

    return-void
.end method

.method public b(J)V
    .locals 3

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aM:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->aM:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->aE:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aB:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aB:Z

    return v0
.end method

.method public c(J)J
    .locals 3

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aA:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->am:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->af:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ab:I

    return-void
.end method

.method public d(J)V
    .locals 1

    iput-wide p1, p0, Lcn/yunzhisheng/asr/a;->aU:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->aQ:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->Y:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ah:I

    return v0
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    add-int/lit16 v0, p1, -0x12c

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aI:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aI:I

    goto :goto_0
.end method

.method public e(J)V
    .locals 3

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aU:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->aU:J

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->aQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aR:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aR:Z

    goto :goto_0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aj:Z

    return-void
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ai:I

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/a;->ag:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x1f40

    :cond_0
    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->at:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->at:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public f(I)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/yunzhisheng/asr/a;->ad:I

    return-void
.end method

.method public f(J)V
    .locals 1

    iput-wide p1, p0, Lcn/yunzhisheng/asr/a;->aW:J

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->Z:Z

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aA:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ax:I

    return-void
.end method

.method public g(J)V
    .locals 3

    iget-wide v0, p0, Lcn/yunzhisheng/asr/a;->aW:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->aW:J

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->be:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aF:Z

    return-void
.end method

.method public h(J)J
    .locals 3

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aP:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/asr/a;->bg:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->ak:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->af:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aI:I

    return v0
.end method

.method public i(J)J
    .locals 5

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->al:I

    return-void
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aJ:Z

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aS:I

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aK:Z

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->Y:Z

    return v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aT:I

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aL:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aj:Z

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aX:I

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aN:Z

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->Z:Z

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->aY:I

    return-void
.end method

.method public m(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->Z:Z

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ao:I

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aV:Z

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aF:Z

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/d;->a()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/c;->a()V

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->ap:I

    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a(Z)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->af()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "setUseFourMicStatus error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public p()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->o()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/d;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    const v1, 0x4d3ebc20    # 2.0E8f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    const v1, 0x49742400    # 1000000.0f

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/asr/c;->a(F)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/d;->a(I)V

    return-void
.end method

.method public p(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a(I)V

    goto :goto_0
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->c(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->b(Z)V

    goto :goto_0
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->o()V

    return-void
.end method

.method public q(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/a;->p(I)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aq:Z

    return-void
.end method

.method public r()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->o()V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->c(I)V

    goto :goto_0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->ar:Z

    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->o()V

    return-void
.end method

.method public s(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/a;->r(I)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->as:Z

    return-void
.end method

.method public t(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/a;->o()V

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->g(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->f(I)V

    goto :goto_0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ab:I

    return v0
.end method

.method public u(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/a;->t(I)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->e(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->d(Z)V

    goto :goto_0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ac:I

    return v0
.end method

.method public v(I)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->h(I)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->au:Z

    return-void
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->ax:I

    return v0
.end method

.method public w(I)V
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aZ:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/yunzhisheng/asr/a;->aZ:I

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->aG:Z

    return-void
.end method

.method public x()I
    .locals 2

    iget v0, p0, Lcn/yunzhisheng/asr/a;->aa:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcn/yunzhisheng/asr/a;->ax:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public x(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcn/yunzhisheng/asr/a;->bb:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xf00

    iput v0, p0, Lcn/yunzhisheng/asr/a;->bb:I

    goto :goto_0
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->bc:Z

    return-void
.end method

.method public y(I)V
    .locals 4

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/a;->i(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->ay:J

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->bd:Z

    return-void
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->ak:Z

    return v0
.end method

.method public z(I)V
    .locals 4

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/a;->i(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/a;->az:J

    :cond_0
    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/a;->av:Z

    return-void
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/a;->aJ:Z

    return v0
.end method
