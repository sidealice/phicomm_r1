.class public Lcom/xiaomi/mipush/sdk/o;
.super Lcom/xiaomi/channel/commonutils/c/f$a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/channel/commonutils/c/f$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/o;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/y;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/y;-><init>()V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/f;->a:Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/j;Lcom/xiaomi/xmpush/thrift/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/y;->a(I)Lcom/xiaomi/xmpush/thrift/y;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/f;->b:Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/k;->a(Lcom/xiaomi/push/service/j;Lcom/xiaomi/xmpush/thrift/f;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/y;->b(I)Lcom/xiaomi/xmpush/thrift/y;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ae;

    const-string v2, "-1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/xmpush/thrift/ae;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/xmpush/thrift/o;->p:Lcom/xiaomi/xmpush/thrift/o;

    iget-object v2, v2, Lcom/xiaomi/xmpush/thrift/o;->N:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/xmpush/thrift/ae;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ae;

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Lorg/apache/thrift/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ae;->a([B)Lcom/xiaomi/xmpush/thrift/ae;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/x;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/x;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/x;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/r;)V

    return-void
.end method
