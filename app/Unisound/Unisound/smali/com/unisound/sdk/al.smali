.class public Lcom/unisound/sdk/al;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/unisound/sdk/am;

.field private i:F

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/unisound/sdk/al;->f:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/al;->g:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/al;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/al;->i:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/al;->j:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/unisound/sdk/al;->b:J

    return-void
.end method

.method public a(Lcom/unisound/sdk/am;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/al;->h:Lcom/unisound/sdk/am;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/al;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/al;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/al;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/al;->k:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/unisound/sdk/al;->c:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/al;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/al;->g:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/al;->a:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/al;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/al;->g:Z

    return v0
.end method

.method public e()Lcom/unisound/sdk/am;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/al;->h:Lcom/unisound/sdk/am;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/al;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/al;->k:I

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/al;->i:F

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/al;->a:I

    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/al;->b:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/al;->c:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/al;->h:Lcom/unisound/sdk/am;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; recognitionResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/al;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/al;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isVarialbe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unisound/sdk/al;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unisound/sdk/al;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; utterranceStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/al;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; utteranceEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/al;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; utteranceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/al;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; recordingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unisound/sdk/al;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; delayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unisound/sdk/al;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/al;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
