.class Lcom/xiaomi/push/service/w$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Lcom/xiaomi/push/service/av$b;

.field final synthetic b:Lcom/xiaomi/push/service/w;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/w$e;->b:Lcom/xiaomi/push/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/service/w;Lcom/xiaomi/push/service/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/w$e;-><init>(Lcom/xiaomi/push/service/w;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/av$b;->c:Lcom/xiaomi/xmpush/thrift/d;

    iget-boolean v0, v0, Lcom/xiaomi/xmpush/thrift/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/av$b;->c:Lcom/xiaomi/xmpush/thrift/d;

    const-string v1, "push_sdk_channel"

    :goto_0
    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    iget-object v0, v0, Lcom/xiaomi/push/service/av$b;->c:Lcom/xiaomi/xmpush/thrift/d;

    iget-object v1, p0, Lcom/xiaomi/push/service/w$e;->b:Lcom/xiaomi/push/service/w;

    invoke-static {v1}, Lcom/xiaomi/push/service/w;->c(Lcom/xiaomi/push/service/w;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-static {}, Lcom/xiaomi/push/service/av;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/av$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->b:Lcom/xiaomi/push/service/w;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->e(Lcom/xiaomi/push/service/w;)Lcom/xiaomi/push/service/w$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v1, "uploader is null"

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/xiaomi/push/service/w$e;->b:Lcom/xiaomi/push/service/w;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/w;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "TinyDataManager need init"

    move v2, v3

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    iget-object v4, v4, Lcom/xiaomi/push/service/av$b;->c:Lcom/xiaomi/xmpush/thrift/d;

    iget-object v4, v4, Lcom/xiaomi/xmpush/thrift/d;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v1, "request channel is null"

    move v2, v3

    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-interface {v0, v4}, Lcom/xiaomi/push/service/w$b;->a(Lcom/xiaomi/push/service/av$b;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v1, "uploader refuse upload"

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/av$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is added to pending list. Pending Reason is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/w$e;->b:Lcom/xiaomi/push/service/w;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->d(Lcom/xiaomi/push/service/w;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/av$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is uploaded immediately."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/w$e;->a:Lcom/xiaomi/push/service/av$b;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Lcom/xiaomi/push/service/w$b;->a(Ljava/util/ArrayList;)V

    return-void
.end method
