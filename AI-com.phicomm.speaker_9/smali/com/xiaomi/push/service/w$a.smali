.class public Lcom/xiaomi/push/service/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/service/w$b;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/push/service/w;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w$a;->c:Lcom/xiaomi/push/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/w$a;->c:Lcom/xiaomi/push/service/w;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->b(Lcom/xiaomi/push/service/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/w$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/w$a;->a:Lcom/xiaomi/push/service/w$b;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/w$a;->c:Lcom/xiaomi/push/service/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add uploader, provider is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/push/service/w$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/w;->a(Lcom/xiaomi/push/service/w;Ljava/lang/String;)Z

    return-void
.end method
