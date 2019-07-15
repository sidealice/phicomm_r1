.class Lcom/baidu/location/g$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method constructor <init>(Lcom/baidu/location/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->b(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->e(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->o(Lcom/baidu/location/g;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->p(Lcom/baidu/location/g;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->q(Lcom/baidu/location/g;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Z)Z

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v1}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Z)Z

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->s(Lcom/baidu/location/g;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->s(Lcom/baidu/location/g;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Z)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    const/16 v1, 0x15

    invoke-static {v0, p1, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_b
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "mac"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v0

    :goto_1
    const-string v0, "hotspot"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/b;->onConnectHotSpotMessage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_c
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loctype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "diagtype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "diagmessage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/location/b;->onLocDiagnosticMessage(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    invoke-static {v1, v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Lcom/baidu/location/c;)V

    goto/16 :goto_0

    :sswitch_e
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v2, v1, v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :sswitch_f
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "removenotify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1, v0}, Lcom/baidu/location/g;->e(Lcom/baidu/location/g;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_7
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x15 -> :sswitch_a
        0x36 -> :sswitch_8
        0x37 -> :sswitch_9
        0x12f -> :sswitch_c
        0x196 -> :sswitch_b
        0x2bd -> :sswitch_d
        0x2bf -> :sswitch_e
        0x2c0 -> :sswitch_f
        0x514 -> :sswitch_3
        0x578 -> :sswitch_4
    .end sparse-switch
.end method
