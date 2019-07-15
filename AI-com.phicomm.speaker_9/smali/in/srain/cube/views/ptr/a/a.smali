.class public Lin/srain/cube/views/ptr/a/a;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/graphics/PointF;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->a:I

    .line 9
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->b:I

    .line 10
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lin/srain/cube/views/ptr/a/a;->c:Landroid/graphics/PointF;

    .line 13
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    .line 14
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    .line 17
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->j:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/a/a;->k:Z

    const v1, 0x3f99999a    # 1.2f

    .line 20
    iput v1, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    const v1, 0x3fd9999a    # 1.7f

    .line 21
    iput v1, p0, Lin/srain/cube/views/ptr/a/a;->m:F

    .line 22
    iput v1, p0, Lin/srain/cube/views/ptr/a/a;->n:F

    .line 23
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->o:Z

    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    .line 26
    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->q:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 51
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->m:F

    return-void
.end method

.method public a(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->o:Z

    .line 100
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->j:I

    .line 101
    iget-object v0, p0, Lin/srain/cube/views/ptr/a/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method protected a(FFFF)V
    .locals 0

    .line 71
    iget p1, p0, Lin/srain/cube/views/ptr/a/a;->m:F

    div-float/2addr p4, p1

    invoke-virtual {p0, p3, p4}, Lin/srain/cube/views/ptr/a/a;->c(FF)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 93
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    .line 94
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->a:I

    .line 95
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->b:I

    return-void
.end method

.method protected a(II)V
    .locals 0

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/a/a;)V
    .locals 1

    .line 165
    iget v0, p1, Lin/srain/cube/views/ptr/a/a;->f:I

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    .line 166
    iget v0, p1, Lin/srain/cube/views/ptr/a/a;->g:I

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    .line 167
    iget p1, p1, Lin/srain/cube/views/ptr/a/a;->h:I

    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/a/a;->k:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->k:Z

    return v0
.end method

.method public b(F)V
    .locals 0

    .line 55
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->n:F

    return-void
.end method

.method public final b(FF)V
    .locals 2

    .line 105
    iget-object v0, p0, Lin/srain/cube/views/ptr/a/a;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    .line 106
    iget-object v1, p0, Lin/srain/cube/views/ptr/a/a;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    .line 107
    invoke-virtual {p0, p1, p2, v0, v1}, Lin/srain/cube/views/ptr/a/a;->a(FFFF)V

    .line 108
    iget-object v0, p0, Lin/srain/cube/views/ptr/a/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 136
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    .line 137
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    .line 138
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    invoke-virtual {p0, p1, v0}, Lin/srain/cube/views/ptr/a/a;->a(II)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->o:Z

    return v0
.end method

.method public c()F
    .locals 1

    .line 43
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->m:F

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 75
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    .line 76
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->a:I

    .line 77
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->i:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->b:I

    return-void
.end method

.method protected c(FF)V
    .locals 0

    .line 112
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->d:F

    .line 113
    iput p2, p0, Lin/srain/cube/views/ptr/a/a;->e:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 150
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    .line 151
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->n()V

    return-void
.end method

.method public d()F
    .locals 1

    .line 47
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->n:F

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 155
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->i:I

    .line 156
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->n()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->o:Z

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 207
    iput p1, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    return-void
.end method

.method public f()V
    .locals 1

    .line 63
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->q:I

    return-void
.end method

.method public f(I)Z
    .locals 1

    .line 219
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Z
    .locals 2

    .line 67
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->q:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)Z
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h()F
    .locals 1

    .line 81
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    return v0
.end method

.method public i()I
    .locals 1

    .line 85
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->a:I

    return v0
.end method

.method public j()F
    .locals 1

    .line 117
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->d:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 121
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->e:F

    return v0
.end method

.method public l()I
    .locals 1

    .line 125
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 129
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    return v0
.end method

.method protected n()V
    .locals 2

    .line 160
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->a:I

    .line 161
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->l:F

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/a/a;->b:I

    return-void
.end method

.method public o()Z
    .locals 1

    .line 171
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 175
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 179
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 2

    .line 183
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->i()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 187
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->j:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 191
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    .line 195
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->i()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 199
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->g:I

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 203
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/a/a;->x()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()I
    .locals 1

    .line 211
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/a/a;->k:Z

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    if-ltz v0, :cond_0

    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    :goto_0
    return v0

    .line 214
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    if-ltz v0, :cond_2

    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->p:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->i:I

    :goto_1
    return v0
.end method

.method public y()F
    .locals 2

    .line 228
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/a/a;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lin/srain/cube/views/ptr/a/a;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method
