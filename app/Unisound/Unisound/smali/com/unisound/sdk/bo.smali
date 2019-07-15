.class Lcom/unisound/sdk/bo;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bo;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bo;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->q(Lcom/unisound/sdk/bg;)Lcom/unisound/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bo;->a:Lcom/unisound/sdk/bg;

    iget-object v1, v1, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bo;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bo;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
