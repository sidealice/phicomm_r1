.class Lcom/unisound/sdk/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/common/d;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/o;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/q;->a:Lcom/unisound/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/q;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/q;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->stop()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/q;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->cancel()V

    return-void
.end method
