.class public Lcom/unisound/b/a;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/unisound/b/a/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "errorCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "registerCode"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p1, :pswitch_data_0

    const-string v0, "message"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_1
    const-string v0, "message"

    const-string v2, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string v0, "message"

    const-string v2, "\u5f02\u5e38\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_2
    const-string v0, "message"

    const-string v2, "\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_3
    const-string v0, "message"

    const-string v2, "\u65e0\u6548\u6fc0\u6d3b\u7c7b\u578b"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_4
    const-string v0, "message"

    const-string v2, "\u6fc0\u6d3b\u72b6\u6001\u9519\u8bef\uff0c\u5df2\u7ecf\u6709\u6fc0\u6d3b\u64cd\u4f5c\u6b63\u5728\u6267\u884c"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/unisound/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    if-nez v0, :cond_0

    const-string v0, "ActivatorHandler listener == null"

    invoke-static {v0}, Lcom/unisound/b/i;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ActivatorHandler GET_RESULT"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "ActivatorHandler NO_NETWORK_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f3

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "ActivatorHandler EXCEPTION_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f4

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "ActivatorHandler RESPONSE_IS_NULL_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f5

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "ActivatorHandler INVALID_URL_TYPE_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f6

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "ActivatorHandler ACTIVATOR_STATUS_ERROR_MESSAGE"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f7

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "ActivatorHandler NO_READ_PHONE_STATE_PERMISSION"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x6a -> :sswitch_3
        0x6b -> :sswitch_2
        0x6c -> :sswitch_5
        0x6d -> :sswitch_1
        0x6e -> :sswitch_4
        0x78 -> :sswitch_6
    .end sparse-switch
.end method
