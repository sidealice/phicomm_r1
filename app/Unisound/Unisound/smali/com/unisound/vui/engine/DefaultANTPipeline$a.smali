.class final Lcom/unisound/vui/engine/DefaultANTPipeline$a;
.super Lcom/unisound/vui/engine/AbstractANTHandlerContext;

# interfaces
.implements Lcom/unisound/vui/engine/ANTOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/DefaultANTPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;

    invoke-static {v0}, Lcom/unisound/vui/engine/DefaultANTPipeline;->access$000(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/unisound/vui/engine/DefaultANTPipeline;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/unisound/vui/engine/AbstractANTHandlerContext;-><init>(Lcom/unisound/vui/engine/DefaultANTPipeline;ZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/vui/engine/DefaultANTPipeline;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    return-void
.end method


# virtual methods
.method public cancelASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->cancelASR()V

    return-void
.end method

.method public cancelEngine()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->cancelEngine()V

    return-void
.end method

.method public cancelEngine(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->cancelEngine()V

    return-void
.end method

.method public cancelTTS(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->cancelTTS()V

    return-void
.end method

.method public doPPTAction(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->cancelASR()V

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->enterASR()V

    return-void
.end method

.method public enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->enterASR()V

    return-void
.end method

.method public enterWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->enterWakeup(Z)V

    return-void
.end method

.method public exceptionCaught(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public handler()Lcom/unisound/vui/engine/ANTHandler;
    .locals 0

    return-object p0
.end method

.method public initializeMode(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->initializeMode()V

    return-void
.end method

.method public initializeSdk(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->initializeSdk()V

    return-void
.end method

.method public playBuffer(Lcom/unisound/vui/engine/ANTHandlerContext;[B)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->playBuffer([B)V

    return-void
.end method

.method public playTTS(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->playTTS(Ljava/lang/String;)V

    return-void
.end method

.method public setWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;Z)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p3, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2, p3}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setWakeupWord(Ljava/util/List;Z)V

    return-void
.end method

.method public stopASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->stopASR()V

    return-void
.end method

.method public stopWakeup(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->stopWakeup()V

    return-void
.end method

.method public updateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->updateWakeupWord(Ljava/util/List;)V

    return-void
.end method

.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTPipeline$a;->b:Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    invoke-interface {v0, p2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->write(Ljava/lang/Object;)V

    return-void
.end method
