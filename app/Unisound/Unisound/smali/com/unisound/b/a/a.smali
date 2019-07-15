.class public Lcom/unisound/b/a/a;
.super Lcom/unisound/b/b;


# static fields
.field private static a:Lcom/unisound/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/b/a/a;->a:Lcom/unisound/b/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/b/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/b/a/a;
    .locals 1

    sget-object v0, Lcom/unisound/b/a/a;->a:Lcom/unisound/b/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/b/a/a;

    invoke-direct {v0, p0}, Lcom/unisound/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/b/a/a;->a:Lcom/unisound/b/a/a;

    :cond_0
    invoke-static {p1}, Lcom/unisound/b/a/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/b/a/a;->a:Lcom/unisound/b/a/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->a(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->l(Ljava/lang/String;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/b/b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/b/b;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
