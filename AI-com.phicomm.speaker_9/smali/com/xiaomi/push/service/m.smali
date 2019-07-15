.class Lcom/xiaomi/push/service/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/ak$b$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/ak$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ak$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/m;->a:Lcom/xiaomi/push/service/ak$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/ak$c;Lcom/xiaomi/push/service/ak$c;I)V
    .locals 2

    sget-object p1, Lcom/xiaomi/push/service/ak$c;->b:Lcom/xiaomi/push/service/ak$c;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/push/service/m;->a:Lcom/xiaomi/push/service/ak$b;

    invoke-static {p1}, Lcom/xiaomi/push/service/ak$b;->b(Lcom/xiaomi/push/service/ak$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/push/service/m;->a:Lcom/xiaomi/push/service/ak$b;

    invoke-static {p2}, Lcom/xiaomi/push/service/ak$b;->a(Lcom/xiaomi/push/service/ak$b;)Lcom/xiaomi/push/service/XMPushService$b;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/push/service/m;->a:Lcom/xiaomi/push/service/ak$b;

    invoke-static {p1}, Lcom/xiaomi/push/service/ak$b;->b(Lcom/xiaomi/push/service/ak$b;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/push/service/m;->a:Lcom/xiaomi/push/service/ak$b;

    invoke-static {p2}, Lcom/xiaomi/push/service/ak$b;->a(Lcom/xiaomi/push/service/ak$b;)Lcom/xiaomi/push/service/XMPushService$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method
