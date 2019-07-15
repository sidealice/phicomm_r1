.class Lcom/unisound/passport/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unisound/passport/d;


# direct methods
.method public constructor <init>(Lcom/unisound/passport/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/passport/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v1, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v2, 0x515

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/passport/PassportListener;->onResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v1, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/passport/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/passport/PassportListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4b1 -> :sswitch_0
        0x4b2 -> :sswitch_1
        0x4b3 -> :sswitch_2
        0x4b4 -> :sswitch_3
        0x4b5 -> :sswitch_4
        0x515 -> :sswitch_5
        0x579 -> :sswitch_6
    .end sparse-switch
.end method
