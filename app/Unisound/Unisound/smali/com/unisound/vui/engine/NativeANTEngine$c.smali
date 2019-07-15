.class final Lcom/unisound/vui/engine/NativeANTEngine$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/NativeANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/NativeANTEngine;

.field private final b:Lcom/unisound/vui/engine/ANTPipeline;


# direct methods
.method private constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->b:Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/NativeANTEngine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/engine/NativeANTEngine$c;-><init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "errorMSG"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->b:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method

.method public onEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x83b

    if-ne p1, v0, :cond_0

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts play end ,isInSetWakeUpWord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v2}, Lcom/unisound/vui/engine/NativeANTEngine;->isInSetWakeUpWord()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->setTtsPlaying(Z)V

    :cond_0
    const/16 v0, 0x835

    if-ne p1, v0, :cond_1

    const-string v0, "AutoStart"

    const-string v1, "tts int done"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->l(Lcom/unisound/vui/engine/NativeANTEngine;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->e(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/c;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/c;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$c;->b:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {v0, p1}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method
