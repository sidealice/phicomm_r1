.class Lcom/unisound/sdk/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/common/ap;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bi;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bi;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/sdk/bi;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->c(Lcom/unisound/sdk/bg;)Lcom/unisound/common/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/common/ao;->c()V

    return-void
.end method
