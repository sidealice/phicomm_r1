.class Lcom/unisound/sdk/bd;
.super Lcom/unisound/common/ab;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/az;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/az;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/az;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0, p2}, Lcom/unisound/common/ab;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x8fd

    iget-object v1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-static {v1}, Lcom/unisound/sdk/az;->d(Lcom/unisound/sdk/az;)Lcom/unisound/client/SpeechSynthesizerListener;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x835

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_1

    :sswitch_9
    const/16 v0, 0x836

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_a
    const/16 v0, 0x837

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_b
    const/16 v0, 0x83a

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_c
    const/16 v0, 0x83b

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_d
    const/16 v0, 0x83c

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_e
    const/16 v0, 0x83d

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_f
    const/16 v0, 0x83f

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_10
    const/16 v0, 0x840

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_11
    const/16 v0, 0x838

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_12
    const/16 v0, 0x839

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    :sswitch_13
    const/16 v0, 0x842

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_11
        0x69 -> :sswitch_12
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_e
        0x6e -> :sswitch_1
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x72 -> :sswitch_13
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xd2 -> :sswitch_6
        0xd3 -> :sswitch_7
        0xd4 -> :sswitch_8
        0xe1 -> :sswitch_2
    .end sparse-switch
.end method

.method public sendMessage(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/common/ab;->sendMessage(I)V

    return-void
.end method
