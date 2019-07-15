.class Lcom/unisound/sdk/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/ck;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/cb;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cc;->a:Lcom/unisound/sdk/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/cc;->a:Lcom/unisound/sdk/cb;

    const/16 v1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/cc;->a:Lcom/unisound/sdk/cb;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/cc;->a:Lcom/unisound/sdk/cb;

    const/16 v1, 0x66

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
