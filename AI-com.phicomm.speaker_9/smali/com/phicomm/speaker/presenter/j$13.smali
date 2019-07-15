.class Lcom/phicomm/speaker/presenter/j$13;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/j;->a(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/phicomm/speaker/presenter/j;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/j;I)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    iput p2, p0, Lcom/phicomm/speaker/presenter/j$13;->a:I

    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 336
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    .line 338
    iget p1, p0, Lcom/phicomm/speaker/presenter/j$13;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->s()V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->r()V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->o()V

    goto :goto_0

    .line 346
    :pswitch_3
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->q()V

    goto :goto_0

    .line 343
    :pswitch_4
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->k()V

    goto :goto_0

    .line 340
    :pswitch_5
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->m()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->a(Lcom/phicomm/speaker/presenter/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 304
    iget p1, p0, Lcom/phicomm/speaker/presenter/j$13;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 323
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->d()V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->b(Lcom/phicomm/speaker/presenter/j;)V

    .line 319
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->c()V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->n()V

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->p()V

    goto :goto_0

    .line 309
    :pswitch_4
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->j()V

    goto :goto_0

    .line 306
    :pswitch_5
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/j$13;->b:Lcom/phicomm/speaker/presenter/j;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/j;->c(Lcom/phicomm/speaker/presenter/j;)Lcom/phicomm/speaker/presenter/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/b/i;->l()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/j$13;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method
