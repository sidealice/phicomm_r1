.class Lcom/phicomm/speaker/presenter/o$1;
.super Ljava/lang/Object;
.source "SpeakerSetPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/presenter/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/o;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/o;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->a(Lcom/phicomm/speaker/presenter/o;)V

    const v0, 0x7f0f0179

    .line 64
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->c(Lcom/phicomm/speaker/presenter/o;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/o;->e()V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/o;->c()V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v1}, Lcom/phicomm/speaker/presenter/o;->d(Lcom/phicomm/speaker/presenter/o;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/b/o;->c(Z)V

    goto :goto_0

    .line 68
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/o$1;->a:Lcom/phicomm/speaker/presenter/o;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/o;->b(Lcom/phicomm/speaker/presenter/o;)Lcom/phicomm/speaker/presenter/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/b/o;->b()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
