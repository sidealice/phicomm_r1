.class Lcom/unisound/sdk/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/by;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/az;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/az;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    const/16 v1, 0x9c8

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;I)I

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->c(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->c(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bt;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    const/16 v1, 0x9c6

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;I)I

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    const/16 v1, 0x9c7

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;I)I

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method
