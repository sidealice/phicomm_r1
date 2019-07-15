.class Lcom/xiaomi/c/g;
.super Lcom/xiaomi/push/service/u$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/c/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/g;->a:Lcom/xiaomi/c/f;

    invoke-direct {p0}, Lcom/xiaomi/push/service/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/a/b$b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/push/a/b$b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/c/f;->a()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/a/b$b;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/c/f;->a(I)V

    :cond_0
    return-void
.end method
