.class Lcom/unisound/vui/engine/NativeANTEngine$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/NativeANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/NativeANTEngine;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, v1, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v2}, Lcom/unisound/vui/engine/NativeANTEngine;->a(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setWakeupWord(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, v1, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v1, v0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setWakeupWord0(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->b(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    invoke-static {v2}, Lcom/unisound/vui/util/entity/ExoAsrTag;->getMainTag(Lcom/unisound/vui/util/entity/ExoAsrTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/engine/NativeANTEngine;->insertVocab(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0xc23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$1;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->a(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setWakeupWord0(Ljava/util/List;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
