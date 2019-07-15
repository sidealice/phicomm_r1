.class Lcom/unisound/sdk/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/cg;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/az;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/az;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bc;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bc;->a:Lcom/unisound/sdk/az;

    invoke-static {v0, p1}, Lcom/unisound/sdk/az;->a(Lcom/unisound/sdk/az;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechSynthesizerInterface USCAsyncTask: onEnd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method
