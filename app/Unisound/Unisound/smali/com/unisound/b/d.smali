.class Lcom/unisound/b/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unisound/b/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/unisound/b/b;I)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/b/d;->b:I

    iput p2, p0, Lcom/unisound/b/d;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivatorInterface HttpThreadSn start jsonStr= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unisound/b/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->a(Lcom/unisound/b/b;)V

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    iget-object v1, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v1}, Lcom/unisound/b/b;->b(Lcom/unisound/b/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v2}, Lcom/unisound/b/b;->c(Lcom/unisound/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/b/b;->n(Ljava/lang/String;)V

    const-string v0, "ActivatorInterface$HttpThreadSn init over"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->b(Lcom/unisound/b/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/j;->b(Landroid/content/Context;)Z

    invoke-static {}, Lcom/unisound/b/j;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v1, ""

    const/4 v0, 0x0

    iget v2, p0, Lcom/unisound/b/d;->b:I

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->d(Lcom/unisound/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->e(Lcom/unisound/b/b;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "ActivatorInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/b/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1388

    invoke-static {v1, v0, v2}, Lcom/unisound/b/f;->a(Ljava/lang/String;Ljava/util/Map;I)Lcom/unisound/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/b/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unisound/b/l;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-virtual {v0}, Lcom/unisound/b/l;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/unisound/b/l;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/unisound/b/b;->a(Lcom/unisound/b/b;J)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v1}, Lcom/unisound/b/b;->h(Lcom/unisound/b/b;)Lcom/unisound/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unisound/b/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    sget-object v1, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    invoke-static {v0, v1}, Lcom/unisound/b/b;->a(Lcom/unisound/b/b;Lcom/unisound/b/c;)Lcom/unisound/b/c;

    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/unisound/b/d;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->f(Lcom/unisound/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->g(Lcom/unisound/b/b;)Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->h(Lcom/unisound/b/b;)Lcom/unisound/b/a;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    const-string v0, "activate HttpResponse result is null"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    sget-object v2, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    invoke-static {v1, v2}, Lcom/unisound/b/b;->a(Lcom/unisound/b/b;Lcom/unisound/b/c;)Lcom/unisound/b/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v1}, Lcom/unisound/b/b;->h(Lcom/unisound/b/b;)Lcom/unisound/b/a;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activate Exception exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/unisound/b/d;->a:Lcom/unisound/b/b;

    invoke-static {v0}, Lcom/unisound/b/b;->h(Lcom/unisound/b/b;)Lcom/unisound/b/a;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    const-string v0, "activate No Network"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
