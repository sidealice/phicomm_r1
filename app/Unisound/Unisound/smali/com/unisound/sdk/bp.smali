.class Lcom/unisound/sdk/bp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x46b

    const/16 v6, 0x453

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0xc1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto :goto_0

    :sswitch_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "recognition End"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v6, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    iget-object v0, v0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/unisound/common/v;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, v4}, Lcom/unisound/sdk/bg;->c(Lcom/unisound/sdk/bg;Z)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x45e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x44d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x45d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x454

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0, v5}, Lcom/unisound/sdk/bg;->d(Lcom/unisound/sdk/bg;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->m(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v6, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x450

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x451

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x45f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x462

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x44f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v7, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0x4b2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0xc81

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0x4b1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0x4ba

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0x514

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v1

    const/16 v2, 0xce5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v7, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x463

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x464

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x465

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x474

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x475

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x488

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->l(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bp;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/16 v1, 0x469

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_9
        0xb -> :sswitch_3
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_c
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x14 -> :sswitch_8
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_15
        0x18 -> :sswitch_16
        0x1e -> :sswitch_17
        0x28 -> :sswitch_18
        0x32 -> :sswitch_19
        0x35 -> :sswitch_12
        0x36 -> :sswitch_11
        0x469 -> :sswitch_1a
        0x4b1 -> :sswitch_f
        0x4b2 -> :sswitch_d
        0x4ba -> :sswitch_10
        0xc81 -> :sswitch_e
    .end sparse-switch
.end method
