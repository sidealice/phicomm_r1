.class Lcom/xiaomi/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/ak$b$a;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lcom/xiaomi/push/service/ak$b;

.field private c:Lcom/xiaomi/smack/a;

.field private d:Lcom/xiaomi/push/service/ak$c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/ak$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/c/a;->f:Z

    iput-object p1, p0, Lcom/xiaomi/c/a;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object p1, Lcom/xiaomi/push/service/ak$c;->b:Lcom/xiaomi/push/service/ak$c;

    iput-object p1, p0, Lcom/xiaomi/c/a;->d:Lcom/xiaomi/push/service/ak$c;

    iput-object p2, p0, Lcom/xiaomi/c/a;->b:Lcom/xiaomi/push/service/ak$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/c/a;->c()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a;->b:Lcom/xiaomi/push/service/ak$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/ak$b;->b(Lcom/xiaomi/push/service/ak$b$a;)V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/c/a;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/c/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/c/a;->e:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/c/f;->a()Lcom/xiaomi/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/c/f;->f()Lcom/xiaomi/push/thrift/b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/c/c;->a:[I

    iget-object v2, p0, Lcom/xiaomi/c/a;->d:Lcom/xiaomi/push/service/ak$c;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/ak$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/xiaomi/push/thrift/a;->E:Lcom/xiaomi/push/thrift/a;

    :goto_0
    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->b:I

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/xiaomi/c/a;->e:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->I:Lcom/xiaomi/push/thrift/a;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/xiaomi/c/a;->e:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/xiaomi/push/thrift/a;->P:Lcom/xiaomi/push/thrift/a;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/xiaomi/c/f;->b()Lcom/xiaomi/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/c/e;->a()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/c/d;->c(Ljava/lang/Exception;)Lcom/xiaomi/c/d$a;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/c/d$a;->a:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/push/thrift/b;->b:I

    iget-object v1, v1, Lcom/xiaomi/c/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    :pswitch_2
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/xiaomi/c/a;->c:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->b(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    iget-object v1, p0, Lcom/xiaomi/c/a;->b:Lcom/xiaomi/push/service/ak$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/ak$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->d(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->c:I

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/c/a;->b:Lcom/xiaomi/push/service/ak$b;

    iget-object v1, v1, Lcom/xiaomi/push/service/ak$b;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(B)Lcom/xiaomi/push/thrift/b;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/xiaomi/c/f;->a()Lcom/xiaomi/c/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/c/f;->a(Lcom/xiaomi/push/thrift/b;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a;->b:Lcom/xiaomi/push/service/ak$b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/ak$b;->a(Lcom/xiaomi/push/service/ak$b$a;)V

    iget-object v0, p0, Lcom/xiaomi/c/a;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->h()Lcom/xiaomi/smack/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/c/a;->c:Lcom/xiaomi/smack/a;

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/ak$c;Lcom/xiaomi/push/service/ak$c;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/c/a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/ak$c;->b:Lcom/xiaomi/push/service/ak$c;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/c/a;->d:Lcom/xiaomi/push/service/ak$c;

    iput p3, p0, Lcom/xiaomi/c/a;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/c/a;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/c/a;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance p2, Lcom/xiaomi/c/b;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/xiaomi/c/b;-><init>(Lcom/xiaomi/c/a;I)V

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    return-void
.end method
