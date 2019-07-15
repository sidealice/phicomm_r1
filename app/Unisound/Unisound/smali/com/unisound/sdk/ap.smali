.class Lcom/unisound/sdk/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/ag;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/ao;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ap;->a:Lcom/unisound/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recognizer timeout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/ap;->a:Lcom/unisound/sdk/ao;

    invoke-static {v1}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/ao;)Lcom/unisound/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/af;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Ontimer:cancelRecognition()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/ap;->a:Lcom/unisound/sdk/ao;

    invoke-static {v0, v3}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/ao;Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ap;->a:Lcom/unisound/sdk/ao;

    invoke-static {v0}, Lcom/unisound/sdk/ao;->b(Lcom/unisound/sdk/ao;)Lcom/unisound/sdk/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ap;->a:Lcom/unisound/sdk/ao;

    invoke-static {v0}, Lcom/unisound/sdk/ao;->b(Lcom/unisound/sdk/ao;)Lcom/unisound/sdk/ad;

    move-result-object v0

    const v1, -0xf232

    invoke-interface {v0, v1}, Lcom/unisound/sdk/ad;->b(I)V

    :cond_0
    return-void
.end method
