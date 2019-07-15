.class public Lcom/unisound/sdk/as;
.super Lcn/yunzhisheng/asr/a;


# static fields
.field public static aA:Ljava/lang/String; = null

.field public static final aB:Ljava/lang/String; = "en"

.field public static final aC:Ljava/lang/String; = "co"

.field public static final aD:Ljava/lang/String; = "cn"

.field public static final aE:Ljava/lang/String; = "oral"

.field public static final aF:Ljava/lang/String; = "cn_en_mix"

.field public static final aL:I = 0x1

.field public static final aM:I = 0x2

.field public static final aN:I = 0x3

.field public static final aO:I = 0x4

.field public static final aP:I = 0x1

.field public static final aQ:I = 0x4

.field public static final aR:I = 0x8

.field public static final aS:I = 0x5

.field public static final aT:I = 0x9

.field public static final aU:I = 0xc

.field public static final aV:I = 0xd

.field private static aw:Lcom/unisound/common/a;

.field public static ay:Ljava/lang/String;

.field public static az:Ljava/lang/String;


# instance fields
.field public aG:Z

.field public aH:Z

.field public aI:Z

.field public aJ:Z

.field public aK:Z

.field public aW:I

.field public aX:Z

.field public aY:I

.field aZ:I

.field public final ax:Ljava/lang/String;

.field private bA:Ljava/lang/String;

.field private bB:Lcom/unisound/sdk/i;

.field private bC:Z

.field private bD:Lcom/unisound/common/ak;

.field private bE:Lcom/unisound/common/ak;

.field private bF:Lcom/unisound/sdk/cl;

.field private bG:Lcom/unisound/sdk/ct;

.field private bH:Z

.field ba:I

.field bb:I

.field bc:I

.field bd:I

.field public be:I

.field public bf:I

.field public bg:Z

.field public bh:Ljava/lang/String;

.field bi:Ljava/lang/String;

.field bj:Ljava/lang/String;

.field private bk:Z

.field private bl:Ljava/lang/String;

.field private bm:Ljava/lang/String;

.field private bn:Ljava/lang/String;

.field private bo:Ljava/lang/String;

.field private bp:Ljava/lang/String;

.field private bq:Ljava/lang/String;

.field private br:J

.field private bs:J

.field private bt:I

.field private bu:Ljava/lang/String;

.field private bv:Z

.field private bw:Z

.field private bx:I

.field private by:Ljava/lang/String;

.field private bz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://u.hivoice.cn:8081/casr/upload"

    sput-object v0, Lcom/unisound/sdk/as;->ay:Ljava/lang/String;

    const-string v0, "general"

    sput-object v0, Lcom/unisound/sdk/as;->az:Ljava/lang/String;

    const-string v0, "poi"

    sput-object v0, Lcom/unisound/sdk/as;->aA:Ljava/lang/String;

    new-instance v0, Lcom/unisound/common/a;

    sget-object v1, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/a;

    invoke-direct {v0, v1}, Lcom/unisound/common/a;-><init>(Lcom/unisound/common/a;)V

    sput-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcn/yunzhisheng/asr/a;-><init>(Landroid/content/Context;)V

    const-string v0, "/USCService/WebApi"

    iput-object v0, p0, Lcom/unisound/sdk/as;->ax:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->aG:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->aH:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/as;->aI:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/as;->aJ:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/as;->aK:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/as;->bk:Z

    iput v2, p0, Lcom/unisound/sdk/as;->aW:I

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->aX:Z

    iput v2, p0, Lcom/unisound/sdk/as;->aY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bo:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/sdk/as;->bp:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/sdk/as;->bq:Ljava/lang/String;

    iput-wide v6, p0, Lcom/unisound/sdk/as;->br:J

    iput-wide v6, p0, Lcom/unisound/sdk/as;->bs:J

    iput v2, p0, Lcom/unisound/sdk/as;->bt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bu:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->bv:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->bw:Z

    iput v2, p0, Lcom/unisound/sdk/as;->aZ:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/unisound/sdk/as;->ba:I

    iput v3, p0, Lcom/unisound/sdk/as;->bb:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/unisound/sdk/as;->bc:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unisound/sdk/as;->bd:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->by:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/sdk/as;->bz:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bA:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/i;

    invoke-direct {v0}, Lcom/unisound/sdk/i;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->bC:Z

    new-instance v0, Lcom/unisound/common/ak;

    const-string v1, ""

    invoke-direct {v0, v4, v1}, Lcom/unisound/common/ak;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/as;->bD:Lcom/unisound/common/ak;

    new-instance v0, Lcom/unisound/common/ak;

    const-string v1, ""

    invoke-direct {v0, v4, v1}, Lcom/unisound/common/ak;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/as;->bE:Lcom/unisound/common/ak;

    new-instance v0, Lcom/unisound/sdk/cl;

    invoke-direct {v0}, Lcom/unisound/sdk/cl;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    new-instance v0, Lcom/unisound/sdk/ct;

    invoke-direct {v0}, Lcom/unisound/sdk/ct;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    iput v3, p0, Lcom/unisound/sdk/as;->be:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/unisound/sdk/as;->bf:I

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->bg:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bh:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->bj:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/unisound/sdk/as;->bH:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "engineParma ->set serviceParam error"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/unisound/sdk/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public B(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/casr/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bo:Ljava/lang/String;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bp:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/sdk/as;->by:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/as;->by:Ljava/lang/String;

    goto :goto_0
.end method

.method public G(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognizerParams:setProductLine do "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bq:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bh:Ljava/lang/String;

    return-void
.end method

.method public I(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bC:Z

    return-void
.end method

.method public J(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->aX:Z

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bk:Z

    return-void
.end method

.method public L(Z)V
    .locals 2

    iget-object v1, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    if-eqz p1, :cond_0

    const-string v0, "far"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/unisound/sdk/i;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "near"

    goto :goto_0
.end method

.method public M(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/as;->g(Z)V

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/as;->bf:I

    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->aH:Z

    return-void
.end method

.method public O(I)V
    .locals 3

    const/4 v2, 0x1

    iput p1, p0, Lcom/unisound/sdk/as;->be:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ct;->b(Z)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/i;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ct;->b(Z)V

    goto :goto_0
.end method

.method public O(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->d(Z)V

    return-void
.end method

.method public P(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->e(Z)V

    return-void
.end method

.method public P(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcn/yunzhisheng/asr/a;->C(I)V

    :cond_0
    return v0
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/as;->bt:I

    return-void
.end method

.method public Q(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->f(Z)V

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/as;->bx:I

    return-void
.end method

.method public R(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->h(Z)V

    return-void
.end method

.method public S(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->b(I)V

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bg:Z

    return-void
.end method

.method public T(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->c(I)V

    return-void
.end method

.method public T(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bH:Z

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->g(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognizerParams:setPunctuated "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bv:Z

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/as;->bw:Z

    return-void
.end method

.method public a(Lcom/unisound/common/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bD:Lcom/unisound/common/ak;

    invoke-virtual {v0, p1}, Lcom/unisound/common/ak;->a(Lcom/unisound/common/ak;)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bE:Lcom/unisound/common/ak;

    invoke-virtual {v0, p1}, Lcom/unisound/common/ak;->a(Lcom/unisound/common/ak;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/at;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/unisound/sdk/at;->a:Lcom/unisound/sdk/at;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/i;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ct;->b(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unisound/sdk/at;->d:Lcom/unisound/sdk/at;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/i;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ct;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/cl;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/i;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ct;->b(Z)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->b(I)V

    return-void
.end method

.method public aP()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/as;->bf:I

    return v0
.end method

.method public aQ()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/as;->be:I

    return v0
.end method

.method public aR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bC:Z

    return v0
.end method

.method public aS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bi:Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bj:Ljava/lang/String;

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bA:Ljava/lang/String;

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bz:Ljava/lang/String;

    return-object v0
.end method

.method public aW()Lcom/unisound/sdk/ct;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bG:Lcom/unisound/sdk/ct;

    return-object v0
.end method

.method public aX()Lcom/unisound/sdk/cl;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    return-object v0
.end method

.method public aY()Lcom/unisound/common/ak;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bD:Lcom/unisound/common/ak;

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bl:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->a(I)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognizerParams:setDefaultServer server "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, ",port "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public ba()Lcom/unisound/sdk/i;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    return-object v0
.end method

.method bb()Lcom/unisound/common/a;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    return-object v0
.end method

.method bc()V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->e()V

    return-void
.end method

.method public bd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bk:Z

    return v0
.end method

.method public be()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0}, Lcom/unisound/sdk/i;->f()I

    move-result v0

    return v0
.end method

.method public bf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->aH:Z

    return v0
.end method

.method public bg()Lcom/unisound/common/ak;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bE:Lcom/unisound/common/ak;

    return-object v0
.end method

.method public bh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->aI:Z

    return v0
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bm:Ljava/lang/String;

    return-object v0
.end method

.method public bj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bn:Ljava/lang/String;

    return-object v0
.end method

.method public bk()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/as;->br:J

    return-wide v0
.end method

.method public bl()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/as;->bs:J

    return-wide v0
.end method

.method public bm()J
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/unisound/sdk/as;->bs:J

    iget-wide v4, p0, Lcom/unisound/sdk/as;->br:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public bn()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/as;->bt:I

    return v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bu:Ljava/lang/String;

    return-object v0
.end method

.method public bp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bo:Ljava/lang/String;

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bp:Ljava/lang/String;

    return-object v0
.end method

.method public bs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->by:Ljava/lang/String;

    return-object v0
.end method

.method public bt()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/as;->bx:I

    return v0
.end method

.method public bu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public bv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bg:Z

    return v0
.end method

.method public bw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bh:Ljava/lang/String;

    return-object v0
.end method

.method public bx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bH:Z

    return v0
.end method

.method public by()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bv:Z

    return v0
.end method

.method public bz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/as;->bw:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/yunzhisheng/asr/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->bF:Lcom/unisound/sdk/cl;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->p(Ljava/lang/String;)V

    return-void
.end method

.method public j(J)V
    .locals 1

    iput-wide p1, p0, Lcom/unisound/sdk/as;->br:J

    return-void
.end method

.method public k(J)V
    .locals 1

    iput-wide p1, p0, Lcom/unisound/sdk/as;->bs:J

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bi:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bj:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bA:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bz:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bl:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v0, "RecognizerParams:setLanguage error language == null "

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "RecognizerParams:setLanguage in "

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-object v0, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-static {p1}, Lcom/unisound/sdk/aq;->a(Ljava/lang/String;)Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/a;->a(Lcom/unisound/common/a;)V

    iput-boolean v2, p0, Lcom/unisound/sdk/as;->af:Z

    sget-object v0, Lcom/unisound/sdk/as;->ay:Ljava/lang/String;

    sput-object v0, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "co"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn_en_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unisound/sdk/as;->aw:Lcom/unisound/common/a;

    invoke-virtual {v1}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":9006/casr/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/sdk/cp;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "RecognizerParams:setLanguage do "

    aput-object v1, v0, v2

    const-string v1, "cn"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecognizerParams:setLanguage do "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4, v3}, Lcom/unisound/sdk/as;->a(Ljava/lang/String;I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/unisound/sdk/as;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/unisound/sdk/co;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bm:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/c/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/as;->bn:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/unisound/sdk/as;->bn:Ljava/lang/String;

    goto :goto_0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/as;->bu:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/as;->bB:Lcom/unisound/sdk/i;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/i;->h(Ljava/lang/String;)V

    return-void
.end method
