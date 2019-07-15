.class public Lcom/unisound/sdk/w;
.super Lcom/unisound/sdk/as;


# static fields
.field private static bB:Z = false

.field private static final bn:I = 0x43


# instance fields
.field aw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bA:Z

.field private bC:I

.field private bk:I

.field private bl:I

.field private bm:I

.field private bo:I

.field private bp:I

.field private bq:I

.field private br:I

.field private bs:I

.field private bt:I

.field private bu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bv:Ljava/lang/String;

.field private bw:Ljava/lang/String;

.field private bx:Z

.field private by:Z

.field private bz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/w;->bB:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0x35

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v1, 0x43

    invoke-direct {p0, p1}, Lcom/unisound/sdk/as;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/unisound/sdk/w;->bk:I

    iput v0, p0, Lcom/unisound/sdk/w;->bl:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/sdk/w;->bm:I

    iput v1, p0, Lcom/unisound/sdk/w;->bo:I

    iput v1, p0, Lcom/unisound/sdk/w;->bp:I

    iput v1, p0, Lcom/unisound/sdk/w;->bq:I

    iput v1, p0, Lcom/unisound/sdk/w;->br:I

    iput v3, p0, Lcom/unisound/sdk/w;->bs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/unisound/sdk/w;->bt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/w;->bv:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/w;->bw:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/sdk/w;->bx:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/w;->by:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/w;->bz:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/w;->bA:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/w;->bC:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public D(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bk:I

    return-void
.end method

.method public D(Z)V
    .locals 0

    sput-boolean p1, Lcom/unisound/sdk/w;->bB:Z

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bl:I

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/w;->bx:Z

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bm:I

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/w;->by:Z

    return-void
.end method

.method public G(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/unisound/sdk/w;->bo:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "FixRecognizerParams"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setWuwWakeupThreshold error , use default threshold"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/w;->bz:Z

    return-void
.end method

.method public H(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/unisound/sdk/w;->bp:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "FixRecognizerParams"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setWuwNet0Threshold error , use default threshold"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public H(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/w;->bA:Z

    return-void
.end method

.method public I(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/unisound/sdk/w;->bq:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "FixRecognizerParams"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setWuwNet1Threshold error , use default threshold"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public J(I)V
    .locals 4

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/unisound/sdk/w;->br:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "FixRecognizerParams"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "setWuwNet2Threshold error , use default threshold"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public K(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bs:I

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bt:I

    return-void
.end method

.method public M(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/w;->bC:I

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "grammaTag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "loadGrammaSuccess"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/w;->bv:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unisound/sdk/w;->bu:Ljava/util/List;

    return-void
.end method

.method public aA()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bl:I

    return v0
.end method

.method public aB()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bm:I

    return v0
.end method

.method public aC()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bo:I

    return v0
.end method

.method public aD()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bp:I

    return v0
.end method

.method public aE()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bq:I

    return v0
.end method

.method public aF()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->br:I

    return v0
.end method

.method public aG()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bs:I

    return v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->bw:Ljava/lang/String;

    return-object v0
.end method

.method public aI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    return-object v0
.end method

.method public aJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->bx:Z

    return v0
.end method

.method public aK()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bt:I

    return v0
.end method

.method public aL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->by:Z

    return v0
.end method

.method public aM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->bz:Z

    return v0
.end method

.method public aN()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bC:I

    return v0
.end method

.method public aO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/w;->bA:Z

    return v0
.end method

.method public aw()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/w;->bB:Z

    return v0
.end method

.method public ax()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/w;->bv:Ljava/lang/String;

    return-object v0
.end method

.method public ay()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/w;->bk:I

    return v0
.end method

.method public az()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/w;->bu:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/w;->bw:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/unisound/sdk/w;->aw:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "need oneshot = "

    aput-object v3, v0, v1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
