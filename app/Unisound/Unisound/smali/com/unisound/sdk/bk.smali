.class Lcom/unisound/sdk/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/ad;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/unisound/sdk/al;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Z)Z

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v1}, Lcom/unisound/sdk/bg;->f(Lcom/unisound/sdk/bg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unisound/common/v;->a()V

    iget-object v1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v1, v1, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v1, v0}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, p1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, p1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, p1}, Lcom/unisound/sdk/bg;->c(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Z)Z

    return-void
.end method

.method public a(Z[BII)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v2, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v2, v2, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v2}, Lcom/unisound/sdk/ao;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->Q(I)V

    const v0, -0x10d89

    if-ne p1, v0, :cond_0

    invoke-static {v1}, Lcom/unisound/c/a;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {v0}, Lcom/unisound/sdk/bg;->refreshActivate()V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, p1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->g(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->b()V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->j(Lcom/unisound/sdk/bg;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v2, v2, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v3}, Lcom/unisound/sdk/bg;->k(Lcom/unisound/sdk/bg;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v5

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, v6}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Z)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    iget-object v2, v1, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v1}, Lcom/unisound/sdk/bg;->k(Lcom/unisound/sdk/bg;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v5

    move v1, v6

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/unisound/common/y;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bg;->l(I)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, p1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bk;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
