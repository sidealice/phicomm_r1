.class public Lcom/unisound/common/bd;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:F

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/bd;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/bd;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/bd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/bd;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/bd;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/bd;->f:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/bd;->f:F

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/common/bd;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/common/bd;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/common/bd;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/common/bd;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/unisound/common/bd;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/unisound/common/bd;->f:F

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/bd;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/bd;->g:Ljava/lang/String;

    return-object v0
.end method
