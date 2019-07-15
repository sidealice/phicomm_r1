.class Lcom/unisound/sdk/cl;
.super Lcom/unisound/sdk/ae;


# instance fields
.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/ae;-><init>()V

    const-string v0, "search"

    iput-object v0, p0, Lcom/unisound/sdk/cl;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/cl;->p:Z

    const-string v0, "json"

    iput-object v0, p0, Lcom/unisound/sdk/cl;->q:Ljava/lang/String;

    sget-object v0, Lcom/unisound/sdk/cl;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/cl;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/cl;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/ae;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search"

    iput-object v0, p0, Lcom/unisound/sdk/cl;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/cl;->p:Z

    const-string v0, "json"

    iput-object v0, p0, Lcom/unisound/sdk/cl;->q:Ljava/lang/String;

    sget-object v0, Lcom/unisound/sdk/cl;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/cl;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/cl;->t:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "returnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "city"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenario"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "udid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oneshotKeyProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/cl;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/cl;->t:I

    return-void
.end method

.method public a(Lcom/unisound/sdk/cl;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/unisound/sdk/ae;->a(Lcom/unisound/sdk/ae;)V

    invoke-virtual {p1}, Lcom/unisound/sdk/cl;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/cl;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/cl;->p:Z

    invoke-virtual {p1}, Lcom/unisound/sdk/cl;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/cl;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/cl;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/cl;->p:Z

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/iss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/cl;->s:Z

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cl;->o:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->r:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cl;->q:Ljava/lang/String;

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->o:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->q:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/cl;->p:Z

    return v0
.end method

.method public x()Lcom/unisound/sdk/cl;
    .locals 0

    return-object p0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/cl;->s:Z

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/cl;->t:I

    return v0
.end method
