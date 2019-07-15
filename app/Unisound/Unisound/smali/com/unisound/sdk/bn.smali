.class Lcom/unisound/sdk/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bn;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Runnable refresh activate"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bn;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {v0}, Lcom/unisound/sdk/bg;->refreshActivate()V

    return-void
.end method
