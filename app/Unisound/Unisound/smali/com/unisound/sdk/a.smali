.class public Lcom/unisound/sdk/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/b;

.field private b:Lcom/unisound/common/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iput-object v0, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/common/b;)V
    .locals 2

    iput-object p1, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iget-object v1, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    invoke-virtual {v0, v1}, Lcom/unisound/common/b;->a(Lcom/unisound/common/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/common/d;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->a(Lcom/unisound/common/d;)V

    :cond_0
    iput-object p1, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/unisound/common/b;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->f()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->a(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->g()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->h()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->i()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/common/b;->e()V

    :cond_0
    return-void
.end method
