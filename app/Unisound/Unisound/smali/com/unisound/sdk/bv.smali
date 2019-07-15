.class Lcom/unisound/sdk/bv;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcn/yunzhisheng/tts/JniClient;

.field final synthetic b:Lcom/unisound/sdk/bu;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bu;Lcn/yunzhisheng/tts/JniClient;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bu;

    iput-object p2, p0, Lcom/unisound/sdk/bv;->a:Lcn/yunzhisheng/tts/JniClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bu;

    iget-object v0, v0, Lcom/unisound/sdk/bu;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bv;->a:Lcn/yunzhisheng/tts/JniClient;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/JniClient;->c()I

    iget-object v0, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bu;

    invoke-static {v0}, Lcom/unisound/sdk/bu;->a(Lcom/unisound/sdk/bu;)V

    iget-object v0, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bu;->a(Lcom/unisound/sdk/bu;Z)Z

    :cond_0
    return-void
.end method
