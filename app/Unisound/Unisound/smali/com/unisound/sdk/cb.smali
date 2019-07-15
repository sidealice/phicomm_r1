.class public Lcom/unisound/sdk/cb;
.super Lcom/unisound/common/ab;


# static fields
.field private static final a:I = 0x64

.field private static final b:I = 0x65

.field private static final c:I = 0x66


# instance fields
.field private d:Lcom/unisound/client/TextUnderstanderListener;

.field private e:Lcom/unisound/sdk/cm;

.field private f:Lcom/unisound/sdk/cl;

.field private g:Landroid/content/Context;

.field private h:Lcom/unisound/sdk/ck;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    new-instance v0, Lcom/unisound/sdk/cc;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/cc;-><init>(Lcom/unisound/sdk/cb;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->h:Lcom/unisound/sdk/ck;

    iput-object p1, p0, Lcom/unisound/sdk/cb;->g:Landroid/content/Context;

    new-instance v0, Lcom/unisound/sdk/cl;

    invoke-direct {v0, p2, p3}, Lcom/unisound/sdk/cl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    sget-object v1, Lcom/unisound/c/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->c()V

    :cond_0
    new-instance v0, Lcom/unisound/sdk/cm;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cm;-><init>(Lcom/unisound/sdk/cl;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->h:Lcom/unisound/sdk/ck;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cm;->a(Lcom/unisound/sdk/ck;)V

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->start()V

    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    :cond_0
    return-void
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->x()Lcom/unisound/sdk/cl;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    const/16 v2, 0x3e8

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/TextUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    invoke-interface {v1, v0}, Lcom/unisound/client/TextUnderstanderListener;->onEvent(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/unisound/client/TextUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected init(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/cb;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v1, :cond_0

    const/16 v1, 0x66

    const v2, -0x109a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setListener(Lcom/unisound/client/TextUnderstanderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    return-void
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "set nlu_scenario Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x1

    :try_start_2
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v2, v1, v0}, Lcom/unisound/sdk/cl;->a(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "nlu server set Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "set nlu_server_address Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_4
    const-string v0, "nlu server set Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :pswitch_3
    :try_start_5
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v0, "set gps Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    :try_start_6
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->h(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v0, "set history Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    :try_start_7
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->i(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v0, "set city Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_8
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->j(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v0, "set voiceID Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    :try_start_9
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->a(Lcom/unisound/sdk/cl;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v0, "set nlu_params Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    :try_start_a
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->d(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v0, "set nlu_ver Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    :try_start_b
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string v0, "set nlu_appver Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x64

    if-nez p1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/cb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
