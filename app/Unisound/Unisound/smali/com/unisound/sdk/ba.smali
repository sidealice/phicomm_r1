.class Lcom/unisound/sdk/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/bz;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/az;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/az;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    const/16 v1, 0x9c5

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;I)I

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0, p1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;Ljava/lang/String;)V

    return-void
.end method

.method public a([BI)V
    .locals 2

    const/4 v1, 0x0

    new-array v0, p2, [B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v1}, Lcom/unisound/sdk/az;->b(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v1}, Lcom/unisound/sdk/az;->b(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/bx;->a([B)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->b(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->b(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->h()V

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/ba;->a:Lcom/unisound/sdk/az;

    invoke-static {v0}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    return-void
.end method
