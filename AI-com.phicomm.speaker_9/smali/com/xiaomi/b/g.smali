.class Lcom/xiaomi/b/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/b/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/g;->a:Lcom/xiaomi/b/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/g;->a:Lcom/xiaomi/b/f;

    invoke-static {v0}, Lcom/xiaomi/b/f;->a(Lcom/xiaomi/b/f;)Lcom/xiaomi/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/b/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/b/g;->a:Lcom/xiaomi/b/f;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/b/f;->c(ILjava/lang/Exception;)V

    return-void
.end method