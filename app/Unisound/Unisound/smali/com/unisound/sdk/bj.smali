.class Lcom/unisound/sdk/bj;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bg;

    iput-object p2, p0, Lcom/unisound/sdk/bj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/bj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/sdk/bj;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->d(Lcom/unisound/sdk/bg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v2, p0, Lcom/unisound/sdk/bj;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/sdk/bj;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/sdk/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SpeechUnderstanderInterface : insertVocab_ext -> inserVocabResult = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "SpeechUnderstanderInterface : insertVocab_ext error "

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bg;

    const v2, -0xf811

    invoke-static {v0, v2}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
